
while true; do
        mpstat -P 1,2,3,4,5,6,7,8,9,10,11,12,13,14  2>&1 | tee -a cpuUsage.txt
        powertop 2>&1 | tee -a cpuPowerConsumption.txt
        sleep 1;
    done