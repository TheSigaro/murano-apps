#!/bin/bash
#  Licensed under the Apache License, Version 2.0 (the "License"); you may
#  not use this file except in compliance with the License. You may obtain
#  a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#  License for the specific language governing permissions and limitations
#  under the License.


sudo sed -e "s/define('DB_NAME'.*$/define('DB_NAME', '%DATABASE%');/" -i /var/www/html/wordpress/wp-config.php
sudo sed -e "s/define('DB_USER'.*$/define('DB_USER', '%USERNAME%');/" -i /var/www/html/wordpress/wp-config.php
sudo sed -e "s/define('DB_PASSWORD'.*$/define('DB_PASSWORD', '%PASSWORD%');/" -i /var/www/html/wordpress/wp-config.php
sudo sed -e "s/define('DB_HOST'.*$/define('DB_HOST', '%HOST%');/" -i /var/www/html/wordpress/wp-config.php

sudo service apache2 restart
