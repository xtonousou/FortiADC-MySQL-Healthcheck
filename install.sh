#! /usr/bin/env bash

command mkdir -pv /opt/space/
command cp *.service *.timer *.sh /opt/space/
command chmod +x /opt/space/*.sh
command yes | command cp Check-MySQL-Health.timer /etc/systemd/system/Check-MySQL-Health.timer
command yes | command cp Check-MySQL-Health.service /etc/systemd/system/Check-MySQL-Health.service
command yes | command cp FortiADC-MySQL-Healthcheck-Server.service /etc/systemd/system/FortiADC-MySQL-Healthcheck-Server.service
command yes | command cp FortiADC-MySQL-Healthcheck-Server.service /etc/systemd/system/FortiADC-MySQL-Healthcheck-Server.service

command systemctl daemon-reload
command systemctl enable Check-MySQL-Health.timer
command systemctl enable FortiADC-MySQL-Healthcheck-Server.service
command systemctl restart Check-MySQL-Health.timer
command systemctl restart FortiADC-MySQL-Healthcheck-Server.service

exit 0
