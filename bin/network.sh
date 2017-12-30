$(ping -c 1 8.8.8.8 >/dev/null 2>&1)

if [ $? == 0 ]; then
    echo 
else
    echo 
fi
