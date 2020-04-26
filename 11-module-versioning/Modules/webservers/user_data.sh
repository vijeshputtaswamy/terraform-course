#!/bin/bash
    yum update -y
    yum install httpd -y
    service httpd start
    chkconfig httpd on
    echo "This is my private subnet" > /var/www/html/index.php
    EOF