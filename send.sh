#!/bin/sh

now=`date "+%Y%m%d%H%M%S"`

hugo new post/$now.md

code C:/Users/17411/blog/content/post/$now.md

hugo

cd C:/Users/17411/blog

git add -A

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin master