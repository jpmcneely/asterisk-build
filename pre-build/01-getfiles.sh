#!/bin/bash

if [ ! -f asterisk-22-current.tar.gz ]; then
  wget https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-22-current.tar.gz
fi
if [ ! -f libpri-1-current.tar.gz ]; then
  wget https://downloads.asterisk.org/pub/telephony/libpri/libpri-1-current.tar.gz
fi
if [ ! -f dahdi-linux-current.tar.gz ]; then 
  wget https://downloads.asterisk.org/pub/telephony/dahdi-linux/dahdi-linux-current.tar.gz
fi
if [ ! -f dahdi-tools-current.tar.gz ]; then
  wget https://downloads.asterisk.org/pub/telephony/dahdi-tools/dahdi-tools-current.tar.gz
fi
if [ ! -f libss7-2.0.1.tar.gz ]; then
  wget https://downloads.asterisk.org/pub/telephony/libss7/libss7-2.0.1.tar.gz
fi

if [ ! -f asterisk-flite.tgz ]; then
  git clone https://github.com/zaf/Asterisk-Flite.git
  mv Asterisk-Flite asterisk-flite
  tar -czvf asterisk-flite.tgz asterisk-flite
  rm -rf asterisk-flite
fi

# EOF
