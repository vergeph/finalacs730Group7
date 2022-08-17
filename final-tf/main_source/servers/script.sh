#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
sudo cat << EOF > /var/www/html/index.html
<h1>Welcome to ACS730 Final Project of Group7! "KyungHo Ryu", "Vergel Paguibitan", "Oluwapelumi Kolade"  My private IP is $myip, <font color="red"> my environment is ${env}</font></h1><br>Buily by Group7 
<img src="https://acs730-final-project1.s3.amazonaws.com/default/images/banf.jpg" alt="S3 Bucket Image" width="500" height="600"> <img src="https://acs730-final-project1.s3.amazonaws.com/default/images/banf1.webp" alt="S3 Bucket Image" width="500" height="600">
EOF
sudo systemctl start httpd
sudo systemctl enable httpd


