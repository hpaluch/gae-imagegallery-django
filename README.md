Image Gallery for GAE using Django-nonrel
=========================================

This projet aims to create web image gallery deployable to Google App Engine using Django-nonrel framework.

Setup
-----

These instructions are based on http://www.allbuttonspressed.com/projects/djangoappengine.

* Get Django-nonrel from http://bitbucket.org/wkornewald/django-nonrel/get/tip.zip

* unpack it somewhere (for example /opt):

		cd /opt
		unzip  /path_to/wkornewald-django-nonrel-tip.zip

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



