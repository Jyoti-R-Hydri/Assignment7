echo "Enter three integers: "
read a
read b
read c
if [[ $((a + b + c)) -eq 0 ]]
then
     echo "The sum of three integers is zero."
else
     echo "The sum of the three integers is not zero."
fi
