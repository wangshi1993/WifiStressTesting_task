#! /usr/bin/python
import subprocess
import time
from getId import getId
from getIp import get_ip_address
def bash_command(cmd):
	proc=subprocess.Popen(['/bin/bash','-c',cmd],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
	return proc
cmd='/home/pi/task/script/sendip.sh '+getId()+' '+get_ip_address('wlan0')
proc=bash_command(cmd)
out, err=proc.communicate()
print out
