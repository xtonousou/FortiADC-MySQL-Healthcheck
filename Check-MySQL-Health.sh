#! /usr/bin/env bash
# Author: Sotirios Roussis - sroussis@space.gr
# Description: Check MySQL Database Host's Health and write the status on file to be read by mysql-healthcheck-server.
# Requirements: mysql user without extra permissions - see requirements.sql file.

declare -r user="adc"
declare -r password='-_-P@ssw0rd!-_-'
declare -r host="127.0.0.1"
declare -r tout=3
declare -r status_file="/opt/space/fortiadc_mysql_healthcheck_status.txt"
declare result

result=$(/bin/timeout --preserve-status "${tout}" /bin/mysql -LBANqs -u "${user}" -p"${password}" -h "${host}" -e "SHOW DATABASES" 2>&1; true)

if grep -q "information_schema" <<< "${result}"; then
    echo -n "200 OK" >| "${status_file}"
else
    echo -n "503 Service Unavailable" >| "${status_file}"
fi

exit 0
