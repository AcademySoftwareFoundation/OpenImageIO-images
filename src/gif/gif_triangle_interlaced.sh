#!/bin/sh

# ImageMagick - http://www.imagemagick.org
# Gifsicle - http://www.lcdf.org/gifsicle

TMPGIF=`mktemp`

convert \
    -size 200x200 xc:skyblue \
    -fill white -stroke black \
    -draw "path 'M 100, 20  L 20, 180  L 180, 180  L 100, 20  Z '" \
    gif:$TMPGIF

gifsicle \
    --interlace \
    $TMPGIF \
    -o ../../gif_triangle_interlaced.gif

rm $TMPGIF
