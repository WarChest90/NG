#!/bin/bash
#FILE=$1     

for f in *.gif; do
    echo "$f";
    fx=`basename "$f" .gif`
    magick "$f" "$fx.gif"
done