#Flip coin simulation

head_count=0
tail_count=0
while(( $head_count != 21 && $tail_count != 21 ))
do
if (( $RANDOM%3 == 1 ))
then
     echo "Head"
     (( head_count++ ))
elif(( $RANDOM%3 == 0 ))
then
     echo "Tail"
     (( tail_count++ ))
else
     echo "Tie"
fi
done

echo "Head count:" $head_count
echo "Tail count:" $tail_count

if(( $head_count > $tail_count ))
then
    echo "Head wins"
elif(( $head_count < $tail_count ))
then
    echo "Tail wins"
else
    echo "Tie"
fi

won_by=$(( $head_count - $tail_count ))
echo "won by:" $won_by
