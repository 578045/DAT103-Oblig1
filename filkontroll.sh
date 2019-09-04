#!/bin/bash
declare TIME=`stat -f %Z $2`

while [ ! -f $2 ]; do
		echo "Filen $2 finnes ikke."
		sleep $1

		if [ -f $2 ]
			then
				echo "Filen har blitt opprettet kl $(date +"%T")"
				exit
		fi
	done


while [ -f $2 ]; do
		echo "Filen $2 finnes. $(date +"%T")"
		NEWTIME=`stat -f %Z $2`
		sleep $1

		if [ ! -f $2 ]
			then
				echo "Filen $2 ble slettet kl $(date +"%T")"
				exit
			elif [ "$NEWTIME" != "$TIME" ]
				then
					echo "Filen ble endret kl $(date +"%T")"
					exit
		fi
	done
