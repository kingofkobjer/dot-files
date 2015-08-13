#!/bin/bash
GET_DESCRIPTION="yes"
PICTURES_DIR=~/Pictures
BACKGROUNDPICNAME=apod.jpg
function get_page {
    wget http://apod.nasa.gov/apod/ --quiet -O /tmp/apod.html
    grep -m 1 jpg /tmp/apod.html | sed -e 's/<//' -e 's/>//' -e 's/.*=//' -e 's/"//g' -e 's/^/http:\/\/apod.nasa.gov\/apod\//' > /tmp/pic_url
}
function clean_up {
    if [ -e "/tmp/pic_url" ]; then
        rm /tmp/pic_url
    fi
    if [ -e "/tmp/apod.html" ]; then
        rm /tmp/apod.html
    fi
}
TODAY=$(date +'%Y%m%d')
if [ ! -e ~/Pictures/${TODAY}_apod.jpg ]; then
    get_page
    PICURL=`/bin/cat /tmp/pic_url`
    wget --quiet $PICURL -O $PICTURES_DIR/${TODAY}_apod.jpg
    ln -sf  $PICTURES_DIR/${TODAY}_apod.jpg $PICTURES_DIR/$BACKGROUNDPICNAME
else
    get_page
    PICURL=`/bin/cat /tmp/pic_url`
    SITEFILESIZE=$(wget --spider $PICURL 2>&1 | grep Length | awk '{print $2}')
    FILEFILESIZE=$(stat -c %s $PICTURES_DIR/${TODAY}_apod.jpg)
    if [ $SITEFILESIZE != $FILEFILESIZE ]; then
        rm $PICTURES_DIR/${TODAY}_apod.jpg
        PICURL=`/bin/cat /tmp/pic_url`
        wget --quiet $PICURL -O $PICTURES_DIR/${TODAY}_apod.jpg
        ln -sf  $PICTURES_DIR/${TODAY}_apod.jpg $PICTURES_DIR/$BACKGROUNDPICNAME
    fi
fi
clean_up
