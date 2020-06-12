#!/bin/bash
cd ./ssh_list

SSH_IP=""
select ssh_ip in *;do
	SSH_IP=$ssh_ip
	break
done

if [ "$SSH_IP" == "" ];then
	echo "Error: The selected option is not valid"
	exit 2
fi

cd ..

rm ssh_list/$SSH_IP
echo "$SSH_IP deleted."
