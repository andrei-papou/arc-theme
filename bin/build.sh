#!/usr/bin/env bash

meson setup \
    --prefix=/output \
    -Dvariants=lighter,dark \
    -Dthemes=gtk3,gnome-shell \
    -Dtransparency=false \
    -Dgtk3_version=3.24 \
    -Dgnome_shell_version=3.38 \
    build/ && \
meson configure build/ && \
meson install -C build/
