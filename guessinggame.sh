#! /bin/bash

###Defining Color codes
Color_Off='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue

num_of_files=$(ls | wc -l)

function your_guess { read -p "Please guess how many files are in this directory:   " guess ;}

your_guess

while [ $guess -ne "$num_of_files" ]
do
    if [ $guess -gt $num_of_files ]
    then
	echo -e "${Yellow}Sorry, Your guess is too high. Try again... ${Color_Off}"
    else [ $guess -lt $num_of_files ]
	echo -e "${Red}Sorry, Your guess is too low. Try again... ${Color_Off}"
    fi
    your_guess
done

echo -e "${Blue} CONGRATULATIONS..!!! Your guess is correct ${Color_Off}"

exit
