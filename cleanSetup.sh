export DJANGO_SUPERUSER_USERNAME=admin
export DJANGO_SUPERUSER_PASSWORD=admin
export DJANGO_SUPERUSER_EMAIL=admin@pyhlie.com

docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser --noinput --email $DJANGO_SUPERUSER_EMAIL
