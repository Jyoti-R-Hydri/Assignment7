echo "Generating 10 random 3 digit numbers"
for (( i=0; i<10; i++ ))
do
    numbers[$i]=$((RANDOM%900+100))
done
echo "Generated array: ${numbers[*]}"
largest=${numbers[0]}
secondlargest=${numbers[0]}
smallest=${numbers[0]}
secondsmallest=${numbers[0]}
for (( i=1; i<10; i++ ))
do
    if [[ ${numbers[i]} -gt $largest ]]
    then
	secondlargest=$largest
	largest=${numbers[i]}
     elif [[ ${numbers[i]} -gt $secondlargest && ${numbers[i]} -ne $largest ]]
     then
	  secondlargest=${numbers[i]}
     fi
     if [[ ${numbers[i]} -lt $smallest ]]
     then
	  secondsmallest=$smallest
	  smallest=${numbers[i]}
     elif [[ ${numbers[i]} -lt $secondsmallest && ${numbers[i]} -ne $smallest ]]
     then
	  secondsmallest=${numbers[i]}
     fi
done
echo "Second largest element: $secondlargest"
echo "Second smallest element: $secondsmallest"
