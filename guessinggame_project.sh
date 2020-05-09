# !/usr/folder/unix_project bash
# File: guessinggame_project.sh

function loop_trail {
  while [[ $response -ne $correct_number ]]
  do 
    if [[ $response -lt $correct_number ]]
    then
      echo "Your guess is too low.Guess a different  number again:"
      read response
    elif [[ $response -gt correct_number ]]
    then
      echo "Your guess is too high.Guess a different  number again:"
      read response
    fi
  done
  echo "Congratulations! Your guess is correct!"
}

echo "Guess number of files are in the current directory:"
read response
correct_number=$(ls | wc -l)
loop_trail response correct_number
