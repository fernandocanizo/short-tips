# Django Setup First Steps

Setup a new environment and activate it. `projectName` could be anything, but
post-fixing it with `_env` ensures clarity and is common practice.

```
python -m venv <projectName_env>
source <projectName_env>/bin/activate
```

Install Django and maybe linter and style helpers.

```
pip install django
# optionally:
pip install pylint pylint-django flake8
```

Scaffold project, run initial migrations and start the development server.

```
django-admin startproject <projectName> . # don't forget the dot!
# optionally edit settings.py and change database connection data
python manage.py migrate
python manage.py runserver
```

Scaffold a new app (Django projects can be composed of several apps).

```
python manage.py startapp <appName>
# edit models.py and define new models
# create new migrations
python manage.py makemigrations
# apply new migrations
python manage.py migrate
```
