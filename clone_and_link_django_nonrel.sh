#!/bin/bash


target=~/django-nonrel-libs

set -e
[ -d $target ] || mkdir -p $target
now=`pwd`

cd $target
for i in wkornewald,django-nonrel \
         wkornewald,djangoappengine \
         wkornewald,djangotoolbox \
         wkornewald,django-dbindexer \
         wkornewald,django-testapp \
         wkornewald,django-filetransfers \
         twanschik,django-autoload \
         david,django-storages
do
a=$(echo $i | cut -d , -f 1)
p=$(echo $i | cut -d , -f 2)
[ -d $p ] || {
  echo "Clonning $p of $a ..."
  hg clone https://bitbucket.org/$a/$p
}
done


# setup links
cd $now/imagegallery

[ -L django ] || ln -s $target/django-nonrel/django .
[ -L djangoautoload ] || ln -s $target/django-autoload/djangoautoload .
for p in djangoappengine djangotoolbox
do
 [ -L $p ] || ln -s $target/$p/$p .
done




