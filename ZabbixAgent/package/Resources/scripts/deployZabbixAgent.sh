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

# VARIABLES

SERVER="$1"
HOSTNAME="$2"

sudo apt-get update

sudo apt-get -y install zabbix-agent

sudo pip install zabbixapi

sudo pip install py-zabbix

sudo sed -e "s/^Server.*$/Server=${SERVER}/" -i /etc/zabbix/zabbix_agentd.conf
sudo sed -e "s/^# ServerActive.*$/ServerActive=${SERVER}/" -i /etc/zabbix/zabbix_agentd.conf
sudo sed -e "s/^Hostname.*$/Hostname=${HOSTNAME}/" -i /etc/zabbix/zabbix_agentd.conf
sudo sed -e "s/^# EnableRemoteCommands.*$/EnableRemoteCommands=1/" -i /etc/zabbix/zabbix_agentd.conf

sudo service zabbix-agent restart
