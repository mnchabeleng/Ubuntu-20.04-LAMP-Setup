# How To Install Linux, Apache, MySQL, PHP (LAMP) stack on Ubuntu 20.04

1. ### Update and upgrade the package lists from the repositories

```
$ sudo apt update -y
$ sudo apt upgrade -y
```

2. ### Install apache

```
$ sudo apt install apache2 -y
```

3. ### To enable apache to start automatically on system boot

```
$ sudo systemctl enable apache2
```

4. ### Install MySQL

```
$ sudo apt install mysql-server -y
```

5. ### Install PHP and some extansions

```
$ sudo apt install php libapache2-mod-php php-mysql php-cli php-common php-zip php-simplexml php-gd php-curl php-intl -y
```

6. ### Make apache web server to prefer PHP files over others, so make Apache look for an index.php file first instead of index.html

```
$ sudo vi /etc/apache2/mods-enabled/dir.conf
```

It will look like this:

```
<IfModule mod_dir.c>
    DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>
```

Move the PHP index.php to the first position, like this:

```
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
```

7. ### PHP.ini file location

```
$ sudo vi /etc/php/7.4/cli/php.ini
```

8. ### Restart apache server

```
$ sudo systemctl restart apache2
```