#!/bin/bash


target=~/django-nonrel-libs

set -e
[ -d $target ] || mkdir -p $target
now=`pwd`

cd $target
for p in django-nonrel djangoappengine djangotoolbox django-dbindexer django-testapp
do
[ -d $p ] || {
  echo "Clonning $p ..."
  hg clone https://bitbucket.org/wkornewald/$p
}
done
# different author
for p in django-autoload
do
[ -d $p ] || {
  echo "Clonning $p ..."
  hg clone https://bitbucket.org/twanschik/$p
}
done


# setup links
cd $now/imagegallery

[ -L django ] || ln -s $target/django-nonrel django
[ -L djangoautoload ] || ln -s $target/django-autoload djangoautoload
for p in djangoappengine djangotoolbox
do
 [ -L $p ] || ln -s $target/$p .
done




