#!/bin/bash
for i in {1..90}
do
   sudo docker cp client2:/epaxos/logs/c_${i}.txt /home/users/sshithil/epaxos/logs/c_${i}.txt
done