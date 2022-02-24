#Flip coin simulation

head_count=0
tail_count=0

while(( $head_count != 10 && $tail_count != 10 ))
do
if (( $RANDOM%2 == 1 ))
then
     echo "Head"
     (( head_count++ ))
else
     echo "Tail"
     (( tail_count++ ))
fi
done

echo "Head count:" $head_count
echo "Tail count:" $tail_count
