#!/bin/bash
# Update the instance and install necessary packages
sudo yum update -y
sudo yum install -y httpd git

# Start Apache and enable it to start on boot
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd


# Clone your static website repository
sudo git clone https://github.com/Tim-eleazu/static-website.git /tmp/static-website

# Move website files to Apache root directory
sudo mv /tmp/static-website/index.html /var/www/html/

# Verify the file is in place
sudo ls -l /var/www/html/

# Restart Apache to apply changes
sudo systemctl restart httpd