docker-compose run --rm web django-admin.py startproject ${PWD##*/} .
cat config/linkdb.py >> ${PWD##*/}/settings.py