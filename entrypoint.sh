#!/bin/bash

INPUT_FILE=$1
FRAME_SIZE=$2
FRAME_RATE=$3

OUTPUT_FILE=${INPUT_FILE%.*}.gif

set -x

ffmpeg -i $INPUT_FILE -s $FRAME_SIZE -pix_fmt rgb8 -r $FRAME_RATE -f gif - | gifsicle --optimize=3 --delay=3 > $OUTPUT_FILE
