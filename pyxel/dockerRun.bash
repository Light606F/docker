# Date : 2020-04-24
# Author : Light606F

# runtime option for opengl
# env option to pass to the display
# volume option to mount the X11 socket
graphicsOptions="\
	--runtime=nvidia \
	--env DISPLAY=$DISPLAY \
	--volume /tmp/.X11-unix/:/tmp/.X11-unix:ro \
"

soundOptions="\
	--env PULSE_SERVER=unix:${HOME}/Documents/docker/pyxel/pulseaudio.socket \
    --env PULSE_COOKIE=${HOME}/Documents/docker/pyxel/pulseaudio.cookie \
    --volume ${HOME}/Documents/docker/pyxel/pulseaudio.socket:${HOME}/Documents/docker/pyxel/pulseaudio.socket:ro \
    --volume ${HOME}/Documents/docker/pyxel/pulseaudio.client.conf:/etc/pulse/client.conf:ro \
"

docker run \
	--rm \
	-it \
	--privileged \
	${graphicsOptions} \
	${soundOptions} \
	-v /dev/input:/dev/input:ro \
	-v ${PWD}:/home/light606f/workdir \
	light606f/pyxel
