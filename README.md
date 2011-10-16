Image Gallery for GAE using Django-nonrel
=========================================

This projet aims to create web image gallery deployable to Google App Engine using Django-nonrel framework.

Setup
-----

These instructions are based on http://www.allbuttonspressed.com/projects/djangoappengine.


Clonning dependent projects: Django-nonrel requires few packages from mercurial repository. To clone them you need to intall mercurial (provides hg command). For example on Fedora Linux:

	yum install mercurial




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



