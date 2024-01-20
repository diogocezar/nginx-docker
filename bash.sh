docker-compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d hello.bankme.app
## or
docker-compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ -d hello.bankme.app

docker-compose exec webserver nginx -s reload

docker-compose run --rm certbot renew