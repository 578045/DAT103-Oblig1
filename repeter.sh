#!/bin/bash
declare -i  antall="4"
declare  tekst="Denne teksten skal repeteres"
while [ $antall -gt 0 ]
	do 
		 echo $tekst
		antall=$(( $antall - 1 ))
	done
