FROM jlesage/baseimage-gui:debian-10
  RUN apt-get update && apt-get install -y openscad

  RUN sed-patch 's/<application type="normal">/<application type="normal" title="OpenSCAD">/' /etc/xdg/openbox/rc.xml && \
    echo "#!/bin/sh\nexport HOME=/home\nexec openscad" > /startapp.sh

  ENV APP_NAME="OpenSCAD"
  ENV USER_ID=0
  ENV GROUP_ID=0
  ENV DISPLAY_WIDTH=2340
  ENV DISPLAY_HEIGHT=1542
  ENV KEEP_APP_RUNNING=1
