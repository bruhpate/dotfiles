calc="gnome-calculato"
alive=`ps -e | grep -i $calc`
if [ -z "$alive" ]; then
    gnome-calculator
else
    pkill $calc
fi

