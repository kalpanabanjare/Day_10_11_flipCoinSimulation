#Flip coin simulation

head_count=0
tail_count=0
tie_count=0

while(( $head_count != 21 && $tail_count != 21 && $tie_count != 21 ))
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
     (( tie_count++ ))
fi
done

echo "Head count:" $head_count
echo "Tail count:" $tail_count
echo "Tie count:" $tie_count

if(( $head_count > $tail_count && $head_count > $tie_count ))
then
    echo "Head wins"
    won_by=$(( $head_count - $tail_count ))
    echo "Head won by:" $won_by
elif(( $tail_count > $head_count && $tail_count > $tie_count ))
then
    echo "Tail wins"
    won_by=$(( $tail_count - $head_count ))
    echo "Tail won by:" $won_by
else
    echo "Tie"
fi

head_count_1=0
tail_count_1=0
if(( $tie_count == 21 ))
then
     echo "Flip the coin again till head or tail win by 2 times"
     while(( $head_count_1 != 2 && $tail_count_1 != 2 ))
     do
         if(( $RANDOM%2 == 1 ))
         then
              (( head_count_1++ ))
         else
              (( tail_count_1++ ))
         fi
     done

echo "Head count:" $head_count_1
echo "Tail count:" $tail_count_1
fi

if(( $head_count_1 > $tail_count_1 ))
then
    echo "Head Wins"
    echo "Head win by:" $head_count_1
elif(( $tail_count_1 > $head_count_1 ))
then
    echo "Tail Wins"
    echo "Tail win by:" $tail_count_1
else
    exit
fi
