#!/bin/bash
exec 3<>/dev/tcp/localhost/9004

echo -e "GET /healthz HTTP/1.1\nhost: localhost:9004\n" >&3

timeout --preserve-status 15 cat <&3 | grep -m 1 status | grep -m 1 UP
ERROR=$?

exec 3<&-
exec 3>&-

exit $ERROR
