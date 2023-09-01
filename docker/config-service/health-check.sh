#!/bin/bash
exec 3<>/dev/tcp/localhost/50100

echo -e "GET /management/health HTTP/1.1\nhost: localhost:50100\n" >&3

timeout --preserve-status 180 cat <&3 | grep -m 1 status | grep -m 1 UP
ERROR=$?

exec 3<&-
exec 3>&-

exit $ERROR
