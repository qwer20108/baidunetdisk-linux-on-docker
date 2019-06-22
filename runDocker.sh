xhost +local:username
docker run -it --name baidupan \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /home/username/baidupanDocker/baidunetdisk:/home/username/baidunetdisk/ \
	-v /home/username/baidupanDocker/config:/home/username/.config \
	baidupan 
