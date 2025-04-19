Common commands to be used:
`docker-compose run --rm app sh -c "python manage.py makemigrations"  `
`docker-compose run --rm app sh -c "python manage.py makemigrations"  `

`docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"  `

`docker-compose run --rm app sh -c "python manage.py startapp xxxx"`

`docker-compose run --rm app sh -c "python manage.py  createsuperuser"`

`docker-compose build`

`docker-compose up`

`docker-compose down`

`docker-compose run --rm app sh -c "python manage.py test"`

`docker-compose run --rm app sh -c "flake8"`

`docker-compose run --rm app sh -c "isort ."`

`docker-compose run --rm app sh -c "django-admin startproject app"`

---
