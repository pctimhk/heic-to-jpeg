#!/bin/bash

input=/input/
output=/output

find $input -name '*.heic' -or -name '*.HEIC'| while read i; do
    [ -f "${i}" ] || break
    
    filename="$(basename $i)"
    filebasename="${filename%.*}"
    folder="$(dirname $i)"
    
    outputfolder="$output$folder"
    outputfullpath="$outputfolder$filebasename.jpg"
    
    if [ ! -f $outputfullpath ]; then
        if [ ! -d $outputfolder ]; then
           mkdir -p $outputfolder
           echo "$outputfolder created"
        fi
        echo "convert heic image from $i to $outputfullpath"
        /tifig/build/tifig -v -p "$i" $outputfullpath
        #touch -r "$i" $outputfullpath
    else
        echo "$outputfullpath already exists"
    fi
done
