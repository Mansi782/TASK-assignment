echo "Enter file name:"
read filename

if [ -e "$filename" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi

if [ -r "$filename" ]
then
    echo "File is readable"
else
    echo "File is not readable"
fi

echo "Enter a number:"
read num

if [ $num -gt 0 ]
then
    echo "Positive number"
elif [ $num -lt 0 ]
then
    echo "Negative number"
else
    echo "Zero"
fi
