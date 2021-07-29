FROM ubuntu:21.04

ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update
RUN apt install -y \
  autoconf \
  automake \
  make \
  pkgconf \
  sassc \
  inkscape \
  libglib2.0-0 \
  libglib2.0-dev \
  optipng
RUN apt install -y \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    ninja-build
RUN pip3 install meson

COPY common /home/common
COPY meson_options.txt /home/meson_options.txt
COPY meson.build /home/meson.build
COPY bin /home/bin

WORKDIR /home

CMD ["./bin/build.sh"]
