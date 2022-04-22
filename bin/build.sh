#!/usr/bin/env bash

meson setup \
    --prefix=/output \
    -Dvariants=lighter,dark \
    -Dthemes=gtk3,gtk4,gnome-shell \
    -Dtransparency=false \
    -Dgtk3_version=3.24 \
    -Dgtk4_version=4.2 \
    -Dgnome_shell_version=40 \
    build/ && \
meson configure build/ && \
meson install -C build/
