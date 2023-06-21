
sudo apt update
sudo apt install mysql-server


sudo mysql_secure_installation

# if recive set password error
sudo mysql

# in mysql shell change pasword by running:
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by '8ehbraaa';

# exit and run again the follwing:
sudo mysql_secure_installation
# and complete the process


# check status of mysql
systemctl status mysql.service

# enter mysql shell
sudo mysql -u root -p  # this will prompt password. enter it and contiue


# RUN the following to save settings and "QUIT;" to exit mysql shell
FLUSH PRIVILEGES;
QUIT;

#  clearning mysql shell
\! clear;



