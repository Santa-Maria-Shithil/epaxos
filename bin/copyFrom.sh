#!/bin/bash
for i in {1..90}
do
   sudo docker cp client:/epaxos/logs/c_${i}.txt $HOME/logs/c_${i}.txt
done