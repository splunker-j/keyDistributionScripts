#!/usr/bin/expect -f

set timeout 60

set dest [lindex $argv 0]
set password "n0tG00d"
spawn ssh $dest

expect "~\]$ "	{
		send "sudo su -\n"
	}
expect "password for splunk: "	{
		send "$password\n"
	}
expect "~\]# "	{
		send "echo \"splunk ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers\n"
	}
expect "~\]# " {send "exit\n"}
expect "~\]$ " {send "exit\n"}

