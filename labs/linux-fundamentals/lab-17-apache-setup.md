# Lab 17: Setup Apache Webserver on Linux VM

## What is Apache?

Web server that serves websites. Essential for project!

## Install Apache

```bash
sudo apt update
sudo apt install apache2 -y
```

## Start Apache

```bash
sudo systemctl start apache2
sudo systemctl enable apache2
# Auto-start on boot
```

## Check Status

```bash
sudo systemctl status apache2
# Should show: active (running)
```

## Apache Directories

- /var/www/html = Website files
- /etc/apache2 = Config files
- /var/log/apache2 = Log files

## Enable mod_rewrite (for routing)

```bash
sudo a2enmod rewrite
sudo systemctl restart apache2
```

## Create First Page

```bash
sudo bash -c 'echo "<h1>Hello from Apache!</h1>" > /var/www/html/index.html'
```

## Test in Browser

http://localhost or http://192.168.x.x

