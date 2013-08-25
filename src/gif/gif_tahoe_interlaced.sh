#!/bin/sh

# ImageMagick - http://www.imagemagick.org
# Gifsicle - http://www.lcdf.org/gifsicle

TMPGIF=`mktemp`

convert \
    ../../tahoe-gps.jpg \
    gif:$TMPGIF

gifsicle \
    --interlace \
    $TMPGIF \
    -o ../../gif_tahoe_interlaced.gif

rm $TMPGIF
