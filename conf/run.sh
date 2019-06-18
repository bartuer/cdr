docker stop -t 0 cdr
docker rm cdr
docker run --name cdr \
       -p 5002:5000 \
       -p 6381:6379 \
       -p 8880:80 \
       -p 8881:81 \
       -p 8443:8443 \
       -v $PWD:/opt/www/static \
       -v $PWD:/opt/notebook \
       -v $PWD/app:/data/app \
       -v $PWD:/home/coder/project \
       -v $PWD/conf/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf \
       -v $PWD/conf/redis.conf:/etc/redis/redis.conf \
       -v $PWD/conf/.htpasswd:/etc/nginx/.htpasswd \
       --sysctl net.core.somaxconn=65536 \
caapi/cdr

echo "8880, 8881, 8443"