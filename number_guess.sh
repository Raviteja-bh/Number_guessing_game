#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RAN=$(( RANDOM % 1000+1 ))
echo $RAN
COUNT=1
GUESS_GAME(){
  echo "Guess the secret number between 1 and 1000:"
  read ANSWER
  while [[ $ANSWER != $RAN ]]
  do
    (( COUNT=COUNT+1 ))
    if [[ $ANSWER = [^0-9]* ]]
    then
        echo "That is not an integer, guess again:"
        read ANSWER
    elif [[ $ANSWER -lt $RAN ]]
    then
      echo "It's higher than that, guess again:"
      read ANSWER
    elif [[ $ANSWER -gt $RAN ]]
    then
      echo "It's lower than that, guess again:"
      read ANSWER
    fi
  done
  if [[ $ANSWER = $RAN ]]
  then
      echo "You guessed it in $COUNT tries. The secret number was $RAN. Nice job!"
  fi
}

echo "Enter your username:"
read USERNAME
GET_GAMEPLAYED=$($PSQL "SELECT gamesplayed FROM userplayed WHERE name='$USERNAME'")
if [[ -z $GET_GAMEPLAYED ]]
then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    GUESS_GAME
    INSERTING=$($PSQL "INSERT INTO userplayed(name, gamesplayed) VALUES('$USERNAME', 1)")
    GUE_INSERT=$($PSQL "INSERT INTO guess(name, guess) VALUES('$USERNAME', $COUNT)") 
else
    GET_GUESS=$($PSQL "SELECT MIN(guess) FROM guess WHERE name='$USERNAME'")
    echo -e "Welcome back, $USERNAME! You have played $GET_GAMEPLAYED games, and your best game took $GET_GUESS guesses."
    (( GET_GAMEPLAYED=GET_GAMEPLAYED+1 ))
    GUESS_GAME
    GUE_INSERT=$($PSQL "INSERT INTO guess(name, guess) VALUES('$USERNAME', $COUNT)")
fi