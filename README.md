# How To Install Linux, Apache, MySQL, PHP (LAMP) stack on Ubuntu 20.04

1. Update and upgrade the package lists from the repositories

```
$ sudo apt update -y
$ sudo apt upgrade -y
```

2. Install apache

```
$ sudo apt install apache2 -y
```

3. To enable apache to start automatically on system boot

```
$ sudo systemctl enable apache2
```

4. Install MySQL

```
$ sudo apt install mysql-server -y
```

5. Install PHP and some extansions

```
$ sudo apt install php libapache2-mod-php php-mysql php-cli php-common php-zip php-simplexml php-gd php-curl php-intl -y
```

6. PHP.ini file location

```
$ sudo vi /etc/php/7.4/cli/php.ini
```