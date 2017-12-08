flag=0

files_num=$(ls | wc -l)

function guess {
	read in
	if [[ $in -eq $files_num ]]
	then
		flag=1
	else
		if [[ $in -gt $files_num ]]
		then
			echo "Your guess is too high"
			echo "Try again"
		else
			echo "Your guess is too low"
			echo "Try again"
		fi
	fi
}

echo "Please input how many files do you think in the current directory:"

while [[ $flag -eq 0 ]]
do
	guess
done

if  [[ $flag -eq 1 ]]
then
	echo "Congratulations, your guess is right!"
fi
