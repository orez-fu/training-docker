cat <<EOF > File-01.txt
Nov 21 15:15:06 ubuntu rsyslogd: [origin software="rsyslogd" swVersion="8.2001.0" x-pid="563" x-info="https://www.rsyslog.com"] rsyslogd was HUPed
Nov 21 15:15:06 ubuntu rsyslogd: [origin software="rsyslogd" swVersion="8.2001.0" x-pid="563" x-info="https://www.rsyslog.com"] rsyslogd was HUPed
Nov 21 15:15:06 ubuntu systemd[1]: logrotate.service: Succeeded.
Nov 21 15:15:06 ubuntu systemd[1]: Finished Rotate log files.
Nov 21 15:15:06 ubuntu dbus-daemon[550]: [system] Activating via systemd: service name='org.freedesktop.fwupd' unit='fwupd.service' requested by ':1.56' (uid=112 pid=21427 comm="/usr/bin/fwupdmgr refresh " label="unconfined")
Nov 21 15:15:06 ubuntu systemd[1]: Starting Firmware update daemon...
Nov 21 15:15:06 ubuntu systemd[1]: phpsessionclean.service: Succeeded.
Nov 21 15:15:06 ubuntu systemd[1]: Finished Clean php session files.
Nov 21 15:15:06 ubuntu systemd[1]: Stopping Network Name Resolution...
Nov 21 15:15:06 ubuntu fstrim[21421]: /boot/efi: 99.2 MiB (103982080 bytes) trimmed on /dev/vda15
Nov 21 15:15:06 ubuntu fstrim[21421]: /: 597.2 MiB (626229248 bytes) trimmed on /dev/vda1
Nov 21 15:15:06 ubuntu systemd[1]: fstrim.service: Succeeded.
Nov 21 15:15:06 ubuntu systemd[1]: Finished Discard unused blocks on filesystems from /etc/fstab.
Nov 21 15:15:06 ubuntu systemd[1]: systemd-resolved.service: Succeeded.
Nov 21 15:15:06 ubuntu systemd[1]: Stopped Network Name Resolution.
Nov 21 15:15:06 ubuntu systemd[1]: Starting Network Name Resolution...
Nov 21 15:15:07 ubuntu systemd[1]: man-db.service: Succeeded.
Nov 21 15:15:07 ubuntu systemd[1]: Finished Daily man-db regeneration.
Nov 21 15:15:07 ubuntu systemd-resolved[21500]: Positive Trust Anchors:
Nov 21 15:15:07 ubuntu systemd-resolved[21500]: . IN DS 20326 8 2 e06d44b80b8f1d39a95c0b0d7c65d08458e880409bbc683457104237c7f8ec8d
Nov 21 15:15:07 ubuntu systemd-resolved[21500]: Negative trust anchors: 10.in-addr.arpa 16.172.in-addr.arpa 17.172.in-addr.arpa 18.172.in-addr.arpa 19.172.in-addr.arpa 20.172.in-addr.arpa 21.172.in-addr.arpa 22.172.in-addr.arpa 23.172.in-addr.arpa 24.172.in-addr.arpa 25.172.in-addr.arpa 26.172.in-addr.arpa 27.172.in-addr.arpa 28.172.in-addr.arpa 29.172.in-addr.arpa 30.172.in-addr.arpa 31.172.in-addr.arpa 168.192.in-addr.arpa d.f.ip6.arpa corp home internal intranet lan local private test
Nov 21 15:15:07 ubuntu systemd-resolved[21500]: Using system hostname 'ubuntu'.
Nov 21 15:15:07 ubuntu systemd[1]: Started Network Name Resolution.
Nov 21 15:15:07 ubuntu dbus-daemon[550]: [system] Successfully activated service 'org.freedesktop.fwupd'
Nov 21 15:15:07 ubuntu systemd[1]: Started Firmware update daemon.
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Updating lvfs
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 0%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 100%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Idle…: 100%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 100%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 0%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 2%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 4%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 6%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 8%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 10%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 13%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 26%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 32%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 45%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 66%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 82%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 97%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Downloading…: 100%
Nov 21 15:15:07 ubuntu fwupdmgr[21427]: Idle…: 100%
Nov 21 15:15:08 ubuntu fwupdmgr[21427]: Successfully downloaded new metadata: 0 local devices supported
EOF

touch file-01
echo "this is a content" > file-01.txt
touch file-02
useradd testuser
echo "Owner is testuser" > notmyfile
chown testuser:testuser notmyfile
useradd otheruser
echo "Owner is otheruser" > notmyfile2
chown otheruser:otheruser notmyfile2
mkdir  testDir
touch testDir/file-01
touch testDir/file-02
mkdir testdir
touch testdir/file-01
touch testdir/file-02
mkdir testdir/testdir2
touch testdir/testdir2/file-05