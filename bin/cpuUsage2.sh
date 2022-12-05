
i=0
while true; do
        #mpstat -P 1,2,3,4,5,6,7,8,9,10,11,12,13,14  2>&1 | tee -a cpuUsage.txt
        echo q | htop --time=10| aha --black --line-fix > cpuInfor/htop${i}.html
        i++
    done