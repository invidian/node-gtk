#!/bin/bash
set -euf
set -o pipefail

# IMPORTANT:
# If you change the dependencies, you must
# also increase the package cache key in main.yaml

if [[ $(uname -s) == 'Darwin' ]]; then
    brew install \
        gtk+3 \
        gobject-introspection \
        glib \
        libsoup \
        cairo \
        gstreamer \
        gst-plugins-base \
        gst-plugins-good \
        gst-plugins-bad \
        libnice
fi;

if [[ $(uname -s) == 'Linux' ]]; then
    sudo apt install \
        xvfb \
        libgirepository1.0-dev \
        gobject-introspection \
        build-essential \
        g++-8 \
        gtk+3.0 \
        libgtk-3-dev \
        gir1.2-gtk-3.0 \
        libsoup2.4 \
        gir1.2-soup-2.4 \
        libcairo2 \
        libcairo2-dev
fi;
