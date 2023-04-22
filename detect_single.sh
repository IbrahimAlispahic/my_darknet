#!/bin/bash

cd ../../solution/my_darknet/
./darknet detector test ./data/obj.data ./cfg/yolov4-obj.cfg ./backup/yolov4-obj_final.weights ../../startup/challenge/$1/$2/$3 -dont_show -override_img