
while true; do
        mpstat -P 0,1,2,3,4,5,6,7,8  2>&1 | tee -a output.txt
        sleep 1;
    done