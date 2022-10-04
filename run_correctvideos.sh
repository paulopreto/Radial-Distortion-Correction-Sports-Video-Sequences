#!/bin/bash

set -e

if [ -z $2 ]; then
  EXTNAME=$"avi"
else
  EXTNAME=$1
fi

mkdir working_correction_videos

for i in *."${EXTNAME}"; do
    NAME=`echo "${i%.*}"`
    NNAME=`echo "$i" | cut -d'.' -f1`
    model_ldm=""
    printf "\nStart file ----------------> ${i} \n\n"
    ./video_correction_linux "$i" "$NNAME""_correct" 0.8 0.0 3.0 3.0 2.0 "div" "True" 2 $model_ldm

    rm -rf *_original_frames
    rm -rf *_corrected_frames
    mv "$NNAME""_correct"".avi" working_correction_videos/"$NNAME""_correct"".mp4"

    printf "\n!!!!!!! Done !!!!!!! -------> ${i} \n\n"

done

rm -rf *.ldm
