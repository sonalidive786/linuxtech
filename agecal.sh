

read -p "enter your birth year:" year
curryear=$( date +%Y )
# if condition 

if [[ -z $year ]]
then 
	echo "invalid input"
	exit 1
	elif [[ ! $year =~ [0-9]{4} ]]
	then 
	echo "invalid input not inter and 4 dig"
	exit 1
	elif (( year > curryear ))
	then
	echo "invalid"
	exit 1
fi

vol=$((year-curryear))
echo "year  : - $vol"
