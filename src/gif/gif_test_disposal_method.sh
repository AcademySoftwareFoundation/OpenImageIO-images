#!/bin/sh

# ImageMagick - http://www.imagemagick.org
# Gifsicle - http://www.lcdf.org/gifsicle

IMG1=`mktemp`
IMG2=`mktemp`
IMG3=`mktemp`
IMG4=`mktemp`

convert -size 20x20 xc:red gif:$IMG1
convert -size 20x20 xc:green gif:$IMG2
convert -size 20x20 xc:blue gif:$IMG3
convert -size 20x20 xc:yellow gif:$IMG4


gifsicle \
    -D bg $IMG1 \
    -D asis -p 10,10 $IMG2 \
    -D none -p 20,20 $IMG3 \
    -p 30,30 $IMG4 \
    -o ../../gif_test_disposal_method.gif

rm $IMG1 $IMG2 $IMG3 $IMG4
