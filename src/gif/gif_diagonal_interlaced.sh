#!/bin/sh

# ImageMagick - http://www.imagemagick.org
# Gifsicle - http://www.lcdf.org/gifsicle

TMPGIF=`mktemp`

convert \
    -size 200x200 xc:skyblue \
    -fill white -stroke black \
    -draw "path 'M 0,0  L 199, 199'" \
    gif:$TMPGIF

gifsicle \
    --interlace \
    $TMPGIF \
    -o ../../gif_diagonal_interlaced.gif

rm $TMPGIF
