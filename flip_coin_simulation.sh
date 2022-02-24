#Flip coin simulation

coin=$(( RANDOM%2 ))

if (( $coin == 1 ))
then
     echo "Head"
else
     echo "Tail"
fi

