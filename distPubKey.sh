#!/usr/bin/expect -f

set dest [lindex $argv 0]
set password "n0tG00d"
spawn ssh-copy-id $dest

expect {
	"(yes/no)?"	{
		send "yes\n"
		exp_continue
	}
	"password: "	{
		send "$password\n"
		exp_continue
	}
}
