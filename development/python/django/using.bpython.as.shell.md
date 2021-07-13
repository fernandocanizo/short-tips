# How to use `bpython` as Django shell

You have to have `django-extensions` installed and activated, check _Django
First Steps_ to see how.

Just install `bpython` or `ipython` or `ptpython` and `./manage.py shell_plus`
will pick up the one installed automatically.

The default resolution order is: ptpython, bpython, ipython, python.

If you want to use one sometimes and some other times other, you can instruct it
this way:

```
./manage.py shell_plus --ptpython
./manage.py shell_plus --bpython
./manage.py shell_plus --ipython
./manage.py shell_plus --plain
```

There're more possibilities, check the
[docs](https://django-extensions.readthedocs.io/en/latest/shell_plus.html?highlight=bpython#interactive-python-shells)

## Old way

I leave this just for reference that one can configure a shell via `.pythonrc`,
but now there's a much easier way to use any popular shell with
`django-extensions`.

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
