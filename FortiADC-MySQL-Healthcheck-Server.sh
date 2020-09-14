#! /usr/bin/env bash
# Author: Sotirios Roussis - sroussis@space.gr
# Server - MySQL Database Host: Listens and responds to HEAD.
# Client - FortiADC: curl -I http://ip_of_database_host:lport/

declare -r pid_file="/tmp/FortiADC-MySQL-Healthcheck-Server.pid"
declare -r status_file="/opt/space/fortiadc_mysql_healthcheck_status.txt"
declare -r lport=8888

echo "$$" >| "${pid_file}"

hash command nc &>/dev/null \
    || {
        echo "nc command is not available. exiting .." 1>&2
        exit 1
    }

hash command mysql &>/dev/null \
    || {
        echo "mysql command is not available. exiting .." 1>&2
        exit 2
    }


while :; do
    printf "HTTP/1.1 $(cat "${status_file}")\n\n" | command nc -n -w 2 -I 1 -N -t -4 -l "${lport}" >/dev/null
done

exit 0
