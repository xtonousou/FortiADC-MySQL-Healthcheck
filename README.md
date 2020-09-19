# FortiADC-MySQL-Healthcheck
Solution for MySQL healthcheck on FortiADC using bash, ncat, mysql and systemd.

## Installation

### Execute the following commands as root on each database node

1. `mysql -u root -p < requirements.sql`
2. `bash install.sh`

![Healthcheck Systemd Service](FortiADC/FortiADC-Healthcheck.PNG "Healthcheck Systemd Service")
![Healthcheck Systemd Timer](FortiADC/MySQL-Healthcheck-Timer.PNG "Healthcheck Systemd Timer")

### Set up the healthcheck on FortiADC

> Find the required script for FortiADC [here](FortiADC/HealthCheckScript.sh)

![Healthcheck Script 1](FortiADC/HealthCheckScript1.PNG "Healthcheck Script 1")
![Healthcheck Script 2](FortiADC/HealthCheckScript2.PNG "Healthcheck Script 2")
![Healthcheck 1](FortiADC/Healthcheck1.PNG "Healthcheck 1")
![Healthcheck 2](FortiADC/Healthcheck2.PNG "Healthcheck 2")
![Real Server Pool](FortiADC/Real-Server-Pool.PNG "Real Server Pool")
![Healthcheck Monitor](FortiADC/Healthcheck-Monitor.PNG "Healthcheck Monitor")
