NAME=$1

# if the arg is upal
if [ "$NAME" = "upal" ]; then
    echo "hello upal!"
# if the arg is elon
elif [ "$NAME" = "elon" ]; then
    echo "hello elon!"
else
    echo "who r u mf?"
fi