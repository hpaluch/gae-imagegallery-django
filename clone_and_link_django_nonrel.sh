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


exit 1
# setup links
cd $now/imagegallery
ln -s $target/django-nonrel django
for p in djangoappengine djangotoolbox django-autoload
do
  ln -s $target/p .
done




