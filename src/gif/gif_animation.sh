#!/bin/sh

# ImageMagick - http://www.imagemagick.org
# Gifsicle - http://www.lcdf.org/gifsicle

IMG1=`mktemp`
IMG2=`mktemp`
IMG3=`mktemp`

convert -size 10x10 xc:red gif:$IMG1
convert -size 20x20 xc:green gif:$IMG2
convert -size 30x30 xc:blue gif:$IMG3

gifsicle \
    --delay 123 \
    $IMG1 $IMG2 $IMG3 \
    -o ../../gif_animation.gif

rm $IMG1 $IMG2 $IMG3
