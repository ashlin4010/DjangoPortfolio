# Django Portfolio

By default this project has the default username and password ``admin``,
if you choose to install the demo data then an additional superuser will be included.

By default the site is available at ``127.0.0.1:8013``, this can be changed in the ``docker-compose.yml`` file.


## Install:
```
git clone https://github.com/ashlin4010/DjangoPortfolio.git

cd DjangoPortfolio

sudo chmod +x *.sh

sudo docker-compose up -d
```

### Add a Database:
##### Note: Container must be running first

```
# Clean start
./cleanSetup.sh

#or

# Demo data + additional superuser
./restoreBackup.sh
```