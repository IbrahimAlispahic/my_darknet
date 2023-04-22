1. git clone https://github.com/IbrahimAlispahic/my_darknet.git

2. Download final weights to backup folder from https://drive.google.com/file/d/18nqf0dAWo3FUbdd6PaD6AhsnjzOpXh-i/view?usp=share_link

3. run `make`

4.1 for task 1
run `detect_single.sh` script one parameter representing image path for which you want to run detections, for example `./detect_single.sh data/competition_cracks/crack5.jpg -dont_show -override_img`. Image will be annotated with detections if they exist

4.2 for task 2
run `detect_all.sh` script with directory name containing images and .txt destination file parameteres, for example `./detect_all.sh data/competition_cracks detections` will run detections on all images inside `data/competition_cracks` directory and save detections to file `detections.txt`

