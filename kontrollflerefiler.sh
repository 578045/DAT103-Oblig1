#!/bin/bash
for i in "$@";
  do
    read -p "Number of seconds to sleep: " slep
    ./filkontroll\ Oppg16.sh $slep "$i"
  done
