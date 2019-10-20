# Development environment Setup script

This script allows developers to install a LEMP Stack. The LEMP software stack is a group of software that can be used to serve dynamic web pages and web applications. This is an acronym that describes a Linux operating system, with an Nginx (pronounced like “Engine-X”) web server. The backend data is stored in the MySQL database and the dynamic processing is handled by PHP.

**This version includes.**
   - NGINX (lts)
   - PHP 7.3
   - MySQL (lts)
   - Composer pre-installed
   - NodeJS & NPM pre-installed


**Step One**
Please be sure you make this file will execute by running `chmod +x install.sh`.

**Step Two**
Cd into this folder and run this script as sudo by typing `sudo ./install.sh`.

**Step Three*
After you did run this script, we need to let nginx listen to PHP7.3 fpm.
Replace the `www.conf` inside `/etc/php/7.3/fpm/pool.d` with the contents of the `example.www.conf_PHP7.3fpm` file attached in this folder.

**Step Four**
Setup a serverblock inside the nginx folder `/etc/nginx/conf.d/mywebsite.test.conf` (http://mywebite.test). You can copy the example file
also attached in this folder. `example.mydomain.conf_nginx`.

**Step Five**
Do `service nginx reload` to check if the conf.d file is correct. When it is we will run `service nginx restart` and also `service php7.3-fpm restart`.

**Tips**
* Be sure you'll put all the hostnames into your hostfile.
* `chown` your files to `www-data:www-data` will somethimes help if you have some issues.

