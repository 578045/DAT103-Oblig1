#!/bin/bash
while [ ! -f $2 ]; do
		echo "$2 finnes ikke."
		sleep $1

		if [ -f $2 ]; then
				echo "$2 Opprettet kl $(date +"%T")"
				exit
		fi
	done

TIME="$(stat -f %Z $2)"
while [ -f $2 ]; do
		echo "$2 finnes. $(date +"%T")"
		NEWTIME="$(stat -f %Z $2)"
		sleep $1

		if [ ! -f $2 ]; then
				echo "$2 slettet. $(date +"%T")"
				exit
			elif [ "$NEWTIME" != "$TIME" ]; then
					echo "$2 endret. $(date +"%T")"
					exit
		fi
	done
