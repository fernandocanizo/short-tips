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
./manage.py migrate
./manage.py runserver
```

Scaffold a new app (Django projects can be composed of several apps).

```
./manage.py startapp <appName>
# edit models.py and define new models
# create new migrations
./manage.py makemigrations
# apply new migrations
./manage.py migrate
```

Create admin user
```
./manage.py createsuperuser
```

Open a shell that let's you import Django stuff easily.
If you got IPython installed on your environment, it will be selected as the
default shell.

```
./manage.py shell
```

## TODO put steps to use bpython

## Extra

By installing Django Extensions one can get some cool new management commands.

```
pip install django-extensions
```

Then edit `<project>/settings.py` and add it to `INSTALLED_APPS` list:

```
...
INSTALLED_APPS = [
  'django_extensions',
  ...
  ]
```

A pretty useful new command is `graph_models`, which allows you to get
acquainted of database models on a new project, it requires to have `graphviz`
installed on the host system.

```
./manage.py graph_models <model> [model ...] | dot -Tpng -o /tmp/dbgraph.png
```
