echo "enter file name:"
read filename

if [ ! -e "$filename" ]
then
    echo "error: file does not exist" >> error.log
    echo "file not found"
    exit 1
fi

echo "file exists"
