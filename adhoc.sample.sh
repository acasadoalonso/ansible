ansible home -b -m apt -a "name=ntp state=present"
ansible home -b -m service -a "name=ntp state=started enabled=yes"
ansible home -b  -a "ntpdate -q pool.ntp.org"
ansible home -b  -a "tail /var/log/messages" | more
