#!/bin/bash

touch ./download/.cache/ngc/hub/tmp/placeholder

cd ./download/.cache/ngc/hub/models--nim--meta--llama3-8b-instruct/snapshots/hf

for file in ./*; do
    cp -L $file ../../../tmp/ && rm $file && mv ../../../tmp/$file .
done