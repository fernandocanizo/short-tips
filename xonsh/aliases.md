# Tip on aliases

From gitter chat:


```
Fernando Lucio Canizo @fernandocanizo Aug 18 14:20
Got this alias defined: 'ls': ['ls', '$LS_OPTIONS', '-l'], and $LS_OPTIONS = '--color=always --file-type --group-directories-first --time-style=long-iso -c' however when I do anls` it seems it's eating the '--color=' part and starting from the 'always...', which gives an error. Any hints about what am I doing wrong?

Spencer Bliven @sbliven 12:06
@fernandocanizo array-style aliases have to have the arguments pre-split. So in your case ls is getting a single argument like ls "--color=always --filetype ..." which of course isn't a valid color. You have to split the options up: aliases['ls'] = ['ls']+$LS_OPTIONS.split()+['-l']
This does splitting when the profile is read. If you want to change LS_OPTIONS during a run then use a function: aliases['ls'] = lambda args: ![ls @($LS_OPTIONS.split()) -l @(args)]
```
