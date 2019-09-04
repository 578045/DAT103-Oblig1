#!/bin/bash
read -p "Number of seconds to sleep: " slep
for i in "$@";
  do
    ./filkontroll\ Oppg16.sh $slep "$i"
  done
