#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

DISPLAY() {
  echo -e "\n~~~~~ Number Guessing Game ~~~~~\n" 

  #get username
  echo "Enter your username:"
  read USERNAME

  #get username from db
  USER_ID=$($PSQL "select u_id from users where name = '$USERNAME'")

  #if user present
  if [[ $USER_ID ]]; then
    #get games played
    GAMES_PLAYED=$($PSQL "select count(u_id) from games where u_id = '$USER_ID'")

    #get best game (guess)
    BEST_GAME=$($PSQL "select min(guesses) from games where u_id = '$USER_ID'")

    # echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  else
    #if u_name not present in db
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

    #insert to users table
    INSERTED_TO_USERS=$($PSQL "insert into users(name) values('$USERNAME')")
    #get user_id
    USER_ID=$($PSQL "select u_id from users where name = '$USERNAME'")
    # echo $USER_ID
  fi

  GAME
}

GAME() {
  #secret number
  SECRET_NUMBER=$((1 + $RANDOM % 1000))

  #count guesses
  NUMBER_OF_GUESSES=0

  #guess number
  # echo $SECRET_NUMBER
  GUESSED=0
  echo -e "\nGuess the secret number between 1 and 1000:"

  while [[ $GUESSED = 0 ]]; do
    read GUESS

    #if not a number
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo -e "\nThat is not an integer, guess again:"
    #if correct guess
    elif [[ $SECRET_NUMBER = $GUESS ]]; then
      NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
      echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      #insert into db
      INSERTED_TO_GAMES=$($PSQL "insert into games(u_id, guesses) values($USER_ID, $NUMBER_OF_GUESSES)")
      GUESSED=1
    #if greater
    elif [[ $SECRET_NUMBER -gt $GUESS ]]; then
      NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
      echo -e "\nIt's higher than that, guess again:"
    #if smaller
    else
      NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
      echo -e "\nIt's lower than that, guess again:"
    fi
  done

  echo -e "\nThanks for playing :)\n"
}

DISPLAY


# PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# RANDOM_NUMBER=$(($RANDOM%1000))

# echo "Enter your username:"
# read USER_NAME 
# echo -e "USER_NAME: $USER_NAME"

# # check if the user_name exist in db
# USER_NAME_RESULT=$($PSQL "select name from users where name = '$USER_NAME';")
# if [[ -z $USER_NAME_RESULT ]]
# then
#   INSERT_USER=$($PSQL "insert into users(name) values('$USER_NAME')")
#   if [[ $INSERT_USER == "INSERT 0 1" ]]
#   then
#     echo "Welcome, $USER_NAME It looks like this is your first time here."
#   fi
# else
#   echo "Welcome back, $USER_NAME! You have played <games_played> games, and your best game took <best_game> guesses."
# fi
