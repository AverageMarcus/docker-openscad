FROM jlesage/baseimage-gui:ubuntu-24.04-v4.7.1
  # Install app
  RUN apt-get update && apt-get install -y openscad

  # Setup dirs and files
  RUN mkdir -p /home/openscad
  RUN echo "#!/bin/sh\nexec openscad" > /startapp.sh

  # Internal env vars
  ENV APP_NAME="OpenSCAD"
  ENV HOME="/home/openscad"

  # User
  ENV USER_ID=0
  ENV GROUP_ID=0

  # App config
  ENV DISPLAY_WIDTH=2340
  ENV DISPLAY_HEIGHT=1542
  ENV KEEP_APP_RUNNING=1
