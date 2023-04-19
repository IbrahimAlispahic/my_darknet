#!/bin/bash

# Set the directory path containing the images
IMG_DIR=$1

# Loop through all the image files in the directory
for img_file in "$IMG_DIR"/*.{jpg,png}; do
    # Check if the file is actually an image
    if [ -f "$img_file" ] && file "$img_file" | grep -q "image data"; then
        # Run detector on the image file and save the results in a file
        ./darknet detector test data/obj.data cfg/yolov4-obj.cfg backup/yolov4-obj_final.weights "$img_file" -result_path "results/$2" -dont_show
    else
        echo "$img_file is not an image file. Skipping."
    fi
done