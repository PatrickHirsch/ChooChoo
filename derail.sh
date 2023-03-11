#!/bin/bash

/usr/bin/rm $HOME/.sl;
/usr/bin/egrep "^alias .*/\.sl; done'$" $HOME/.bashrc -v > $HOME/.bashrc_tmp;
/usr/bin/mv $HOME/.bashrc_tmp $HOME/.bashrc;
