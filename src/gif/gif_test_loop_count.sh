#!/bin/sh

# ImageMagick - http://www.imagemagick.org
# Gifsicle - http://www.lcdf.org/gifsicle

IMG=`mktemp`

convert -size 20x20 xc:yellow gif:$IMG

gifsicle \
    --loopcount=12345 $IMG \
    -o ../../gif_test_loop_count.gif

rm $IMG
