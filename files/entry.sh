#!/bin/sh

nohup /bin/q -p 5000 < /dev/null > /tmp/kdbstdout 2>&1 &
echo $! > /tmp/kdbpid

nohup /usr/local/bin/redis-server /etc/redis/redis.conf < /dev/null > /tmp/redisstdout 2>&1 &
echo $! > /tmp/redispid

nohup /usr/bin/jupyter notebook --ip=0.0.0.0 --port=9999 --notebook-dir=/opt/notebook --no-browser --allow-root < /dev/null > /tmp/jupyterstdout 2>&1 &
echo $! > /tmp/jupyterpid

# nohup /usr/local/bin/code-server --cert=/certs/caapi_ai.crt --cert-key=/certs/caapi_ai.key --port=8443 --disable-telemetry -N -H /home/coder/project < /dev/null > /tmp/codeserverstdout 2>&1 &
# echo $! > /tmp/codeserverpid

/usr/local/bin/code-server --cert=/certs/caapi_ai.crt --cert-key=/certs/caapi_ai.key --port=8443 --disable-telemetry -N -H /home/coder/project
# exec $@ &

# /usr/bin/nginx -g "daemon off;"