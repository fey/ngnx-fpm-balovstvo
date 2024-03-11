#!/bin/bash

php-fpm8.1 -F &
nginx -g 'daemon off;' &
tail -f /var/log/nginx/project.local_error.log /var/log/nginx/project.local_access.log

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?
