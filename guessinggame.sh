o "------[Welcome to my Guess Game !]------------"
function ask {
	echo "Please enter your guessed number of files in current directory:"
	read userguess
   NOfiles=$(ls -1 | wc -l)
}
ask
while [[ $userguess -ne $NOfiles ]]
do
	if [[ $userguess -lt $NOfiles ]] 
	then
		echo "Too low number"
	else
		echo "Too high number"
	fi
	ask
done
echo "Well done! It is the correct answer!! Current files are " $userguess
