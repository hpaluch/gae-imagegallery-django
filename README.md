Image Gallery for GAE using Django-nonrel
=========================================

This projet aims to create web image gallery deployable to Google App Engine using Django-nonrel framework.


__NOTE: this project is NON-working and INCOMPLETE__

Setup
-----

These instructions are based on http://www.allbuttonspressed.com/projects/djangoappengine.


To clone dependent projects you need to install Mercurial (`hg' command). On Fedora Linux try:

	yum install mercurial

Run this script to clone and link django-nonrel projects:

	./clone_and_link_django_nonrel.sh


* create setup script for environment/path - named `~/bin/set_django_nonrel.sh' with contents:

```bash
#!/bin/bash

dj=/opt/wkornewald-django-nonrel-tip

export PYTHONPATH=$dj
export PATH=$PATH:$dj/django/bin
```

Local development
-----------------

* cd to project directory and setup paths:

		cd gae-imagegallery-django/imagegallery
		. ~/bin/set_django_nonrel.sh


* running local server
		./manage.py runserver


Remote deployment
-----------------



