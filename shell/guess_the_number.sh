#!/bin/bash

number=$(( $RANDOM % 100 + 1 ))

echo "Guess a number between 1 and 100"

guess=0
tries=0

while [ "0$guess" -ne $number ] ; do
  read user_input
  if [[ $user_input =~ ^[0-9]+$ ]]
  then
    ((guess=user_input))
    ((tries=tries+1))
    [ $guess -lt $number ] && echo "Too low"
    [ $guess -gt $number ] && echo "Too high"
  else
    echo "Please provide an integer input"
  fi
done
if [ $guess -eq $number ]
then
  echo "You got the correct number in $tries guesses."
fi

exit 0
