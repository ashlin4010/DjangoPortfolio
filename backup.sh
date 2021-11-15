docker-compose exec db /usr/bin/mysqldump -u root --password=PuPKcCKfxzw6bxUl django | sed 1d > backup.sql
