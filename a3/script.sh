#! /bin/sh

if [ "$#" != "2" ]; then
    echo "Invalid input"
    exit 1
fi

i=1
j=1
sum=0

if [ $1 -le 0 ] || [ $2 -le 0 ]; then
    echo "Input must be greater than 0"
    exit 1
fi

while [ $i -le $1 ]
do
    while [ $j -le $2 ]
    do
        sum=`expr $i '*' $j`
        echo -ne "${i}*${j}=${sum}\t "
        j=`expr $j + 1`
    done
    echo ""
    i=`expr $i + 1`
    j=1
done

exit 0