#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE games, teams"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    if [[ -z $WINNER_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$WINNER')")
    fi
    if [[ -z $OPPONENT_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')")
    fi
  
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    INSERT_GAME_RESULT=$($PSQL "insert into games(year, winner_id, opponent_id, round, winner_goals, opponent_goals) values($YEAR, $WINNER_ID, $OPPONENT_ID, '$ROUND', $W_GOALS, $O_GOALS)")

  fi

done