#!/usr/bin/env bash

# put .vagrant outside current dir
DOTVAGRANT="~/.vagrant__dotvagrant_dirs/${PWD##*/}.dotvagrant"

VAGRANT_DOTFILE_PATH=$DOTVAGRANT VAGRANT_VAGRANTFILE=vagrant/Vagrantfile vagrant "$@"



