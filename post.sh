now=`date "+%Y%m%d%H%M%S"`

hugo new post/$now.md

code content/post/$now.md &

wait

hugo build