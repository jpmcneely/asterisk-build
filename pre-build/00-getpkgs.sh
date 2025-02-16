#!/bin/bash

KVER=`uname -r`

apt-get install linux-headers-${KVER} libusb-dev libnewt-dev mpg123 \
    libpcap-dev ppp-dev uuid-dev libxml2-dev sqlite3 libsqlite3-dev \
    unixodbc unixodbc-dev libsqliteodbc unixodbc-common subversion alsa-utils \
    unixodbc-dev libodbc2 libodbccr2 libodbcinst2 odbc-postgresql git \
    odbc-mariadb odbc-mdbtools python3-pyodbc odbcinst speex libspeex-dev \
    gsm-utils libgsm1-dev libgsmme-dev libgsm1 libgsm-tools flite1-dev \
    flite libflite1 libspandsp-dev libspandsp2 alsa-tools libasound2-plugins \
    libmpg123-dev libmpg123-0 mpg123 alsa-oss libaudio2 unixodbc-dev \
    libspeexdsp-dev libssl-dev libgmime-3.0-dev libiksemel-utils libsrtp2-dev \
    libsrtp2-1 libre-dev libre0 libiksemel-dev libiksemel3 javascript-common \
    oss-compat libxslt1-dev libportaudio2 portaudio19-dev libxml2-utils \
    build-essential autoconf automake libtool-bin libedit-dev libcodec2-dev \
    bluetooth libbluetooth-dev vorbis-tools libvorbis-dev libogg-dev curl \
    libcurl4-openssl-dev 


# EOF
