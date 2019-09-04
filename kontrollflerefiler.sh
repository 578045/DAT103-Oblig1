#!/bin/bash
for i in "$@";
  do
    ./filkontroll\ Oppg16.sh 5 "$i"
    i=$[i+1]
  done
