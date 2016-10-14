#
# Base Dockerfile
#
#
FROM hpierce/docker-ansible-server

MAINTAINER Hugh Pierce

ENV DEBIAN_FRONTEND noninteractive

# Add ansible configurations
ADD ansible /etc/ansible

# Add yaml scripts
ADD root /root

# Install playbooks
RUN ansible-galaxy install chusiang.php7 && ansible-galaxy install \
    franklinkim.git && ansible-galaxy install geerlingguy.mysql && \
    ansible-galaxy install geerlingguy.nginx

