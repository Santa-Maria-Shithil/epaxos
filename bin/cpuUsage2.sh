
i=0
while true; do
        #mpstat -P 1,2,3,4,5,6,7,8,9,10,11,12,13,14  2>&1 | tee -a cpuUsage.txt
        #mkdir -p cpuInfo/
        sudo docker stats 2>&1 | tee -a cpuUsage.txt 
        #sleep 1
       # echo q | htop -d 10| aha --black --line-fix > cpuInfo/htop${i}.html
       # ((i=i+1))
    done