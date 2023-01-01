pavu="pavucontrol"
alive=`ps -e | grep -i $pavu`
if [ -z "$alive" ]; then
    $pavu
else
    pkill $pavu
fi
