Image Gallery for GAE using Django-nonrel
=========================================

This project aims to create web image gallery deployable to Google App Engine using Django-nonrel framework.


__NOTE: this project is NON-working and INCOMPLETE. So far it displays "It Worked!" page.__

However if you want setup your own Django-nonrel application for GAE these instructions would be useful...

Setup
-----

Setup is partially based on http://www.allbuttonspressed.com/projects/djangoappengine.

At first, get most recent GAE SDK from http://code.google.com/appengine/downloads.html#Google_App_Engine_SDK_for_Python

And unpack it:

```bash
su - # go to root, or maybe try 'sudo bash'
cd /opt
unzip ~/path_to_my_sdk/google_appengine_1.5.5.zip
```


To clone dependent projects you need to install Mercurial (`hg' command). On Fedora Linux try:

	yum install mercurial

Run this script to clone and link django-nonrel projects:

	./clone_and_link_django_nonrel.sh



Local development
-----------------

* running local server

```bash
export PATH=/opt/google_appengine:$PATH
cd gae-imagegallery-django/imagegallery
./manage.py runserver
```

* point your borwser at http://localhost:8000/ It should say "Your Django-nonrel installation is working fine."

Remote deployment
-----------------

TODO: (not yet tested)

