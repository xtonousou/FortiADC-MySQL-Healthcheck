#! /usr/bin/env bash

command yes | command cp Check-MySQL-Health.timer /etc/systemd/system/Check-MySQL-Health.timer
command yes | command cp Check-MySQL-Health.service /etc/systemd/system/Check-MySQL-Health.service
command yes | command cp FortiADC-MySQL-Healthcheck-Server.service /etc/systemd/system/FortiADC-MySQL-Healthcheck-Server.service

systemctl daemon-reload
systemctl enable Check-MySQL-Health.timer
systemctl enable FortiADC-MySQL-Healthcheck-Server.service
systemctl restart Check-MySQL-Health.timer
systemctl restart FortiADC-MySQL-Healthcheck-Server.service

exit 0
