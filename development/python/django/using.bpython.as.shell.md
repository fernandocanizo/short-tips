# How to use `bpython` as Django shell

Create a `.pythonrc` file with this content:

```
print('Special pythonrc loaded')
try:
    from django.core.management import setup_environ
    import settings
    setup_environ(settings)
    print('imported django settings')
    try:
        exec_strs = ["from %s.models import *" % apps for apps in settings.INSTALLED_APPS ]
        for x in exec_strs:
            try:
                exec(x)
            except:
                print('Not imported for %s' % x)
        print('imported django models')
    except:
        pass
except:
    pass
```
(this was a copy&paste from an old blog post, it can surely be improved)

Then export `PYTHONSTARTUP` pointing to your file:

```
export PYTHONSTARTUP=path/to/your/.pythonrc
```

Et voilà!

```
./manage.py shell_plus
```
(you need to have `django-extensions` installed and activated for `shell_plus`,
check _Django First Steps_ to see how to set up that)
