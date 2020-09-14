# FortiADC-MySQL-Healthcheck
Solution for MySQL healthcheck on FortiADC using bash, ncat, mysql and systemd.

## Usage

```bash
xtonousou:/tmp $ sudo systemctl stop mariadb; date
Tue Sep 15 01:23:56 AM EEST 2020
xtonousou:/tmp $ curl -I http://127.0.0.1:8888/; date
HTTP/1.1 200 OK

Tue Sep 15 01:23:58 AM EEST 2020
xtonousou:/tmp $ curl -I http://127.0.0.1:8888/; date
HTTP/1.1 503 Service Unavailable

Tue Sep 15 01:24:04 AM EEST 2020
xtonousou:/tmp $ sudo systemctl restart mariadb; date
Tue Sep 15 01:24:10 AM EEST 2020
xtonousou:/tmp $ curl -I http://127.0.0.1:8888/; date
HTTP/1.1 503 Service Unavailable

Tue Sep 15 01:24:15 AM EEST 2020
xtonousou:/tmp $ curl -I http://127.0.0.1:8888/; date
HTTP/1.1 200 OK

Tue Sep 15 01:24:16 AM EEST 2020
xtonousou:/tmp $
```
