#! /bin/bash
curPath=$(cd "$(dirname "$0")";pwd)
source ${curPath}/../connection.conf
ssh-keyscan -p ${ipServerSshPort} ${ipServerIp} >> ~/.ssh/known_hosts
