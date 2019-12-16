---
title: "Generate random password in Linux terminal"
description: How to generate secure random passwords in linux terminal
date: 2017-01-21
classes: wide
categories:
  - blog
tags:
  - Linux
  - Security
  - Tips
---
This just a log for me (&amp; may be others) to remind me how to generate random passwords on Linux terminal. 
[`pwgen`](https://sourceforge.net/projects/pwgen/) is a useful command which can generate both pronounceable and secure passwords.
There are a [few other](http://unix.stackexchange.com/q/230673) [creative ways](http://askubuntu.com/q/25090) to generate random text/password on linux terminal, but pwgen is specially designed for the task and is the most handy.

The usage is quite simple:
```
pwgen [ OPTIONS ] [ pw_length ] [ num_pw ]
```

By default, pwgen generates pronounceable passwords. 
For secure password use `-s` option. 
The [pwgen man page](https://linux.die.net/man/1/pwgen) describes more options. 
Some example are listed below.

{% include adsense-in-article.html %}

### Generate 6 random (pronounceable) passwords of length 20:
```shell
$ pwgen 20 6
fei7hohS9co6ahkua2ei chaiFoo2eaLedei9Oosi Ainuu5eehie5ae1eecae
co6quahbaiPahSh1good fah6Daer7geepae0teef queeLahl9us7sushawie
```

### Generate 6 random (secure) passwords of length 20.
```shell
$ pwgen -s 20 6
PTbQ8Nc8gIJ5sHrKM0gS pMI8R8KK0MrnCd4UCEhe 25KcqpYiQTOFYf7PHwoN
ztClxu7CQiOOVPgNJFHa yKnc1obXyXLvmPmLAVWA L1fMNHRRHiC2MNWS6j2Z
```

### Generate 6 random passwords of length 20 with special characters.
{% raw %}
```shell
$ pwgen -y 20 6
EN5eb2eyuz2ohNgir}ei yah&gt;l9ainohWah8afaiJ Jue-dah3quoo8wee9foh
ul)eoWie3Ees;aeh(ees pheehie+Zanahw~eiP5g dath5oozaht0fei&amp;F4Xi
```
{% endraw %}

### Generate 6 random (secure) passwords of length 20 with special characters.
```shell
$ pwgen -s -y 20 6
JSt]pL1UV)`u&gt;Rz%;]Ei yx-sWF#pm_ci?(w|D0pd [#W%%E%oP7vQ~U%?#L&lt;9
:~Y:Z?LH''aHH&amp;A$zJ4w zZ5vZH+ABm!k;S_b^#cb c"zpT6l1HI_"ENSuNAkw
```

### Lastly, here is the pwgen help text:
```
$ pwgen --help
Usage: pwgen [ OPTIONS ] [ pw_length ] [ num_pw ]

Options supported by pwgen:
  -c or --capitalize
        Include at least one capital letter in the password
  -A or --no-capitalize
        Don't include capital letters in the password
  -n or --numerals
        Include at least one number in the password
  -0 or --no-numerals
        Don't include numbers in the password
  -y or --symbols
        Include at least one special symbol in the password
  -s or --secure
        Generate completely random passwords
  -B or --ambiguous
        Don't include ambiguous characters in the password
  -h or --help
        Print a help message
  -H or --sha1=path/to/file[#seed]
        Use sha1 hash of given file as a (not so) random generator
  -C
        Print the generated passwords in columns
  -1
        Don't print the generated passwords in columns
  -v or --no-vowels
        Do not use any vowels so as to avoid accidental nasty words
```
