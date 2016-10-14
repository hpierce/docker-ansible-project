## docker-ansible-project

My solution to the problem:

Build a LEMP server on Ubuntu 16.04 using a configuration manager

The following technologies were used:

- Ansible
- Nginx
- MySQL
- PHP 7.0

### Clone this repository
``` bash
# git clone git@github.com:hpierce/docker-ansible-project.git
# cd docker-ansible-project
```

### Run an ansible client in the background
It is bare bones Ubuntu 16.04
It will be a web application so use port 8080
``` bash
# docker run -d -p 8080:80 hpierce/docker-ansible-client
```

### Get the ip of the ansible client with get_ip.sh
``` bash
# ./get_ip.sh
```
It should be 172.17.0.2, unless you already have something running.

### Build and run the ansible server
This uses hpierce/docker-ansible-server as the base
``` bash
# docker build -t ansible .
# docker run -h ansible -it ansible /bin/bash
root@ansible:/# 
```

### Install LEMP on client using ansible server
If the ip of the client is 172.17.0.2 then you can run this
``` bash
root@ansible:/# ansible-playbook /root/lemp.yml
```

### Otherwise use that ip address on the command line 
Example 172.17.0.3
``` bash
root@ansible:/# ansible-playbook /root/lemp.yml -i 172.17.0.3,
```

### Install application on client
If the ip of the client is 172.17.0.2 then you can run this
``` bash
root@ansible:/# ansible-playbook /root/app.yml
```

### Otherwise use that ip address on the command line 
Example 172.17.0.3
``` bash
root@ansible:/# ansible-playbook /root/app.yml -i 172.17.0.3,
```
### See results
Open your browser to http://localhost:8080

