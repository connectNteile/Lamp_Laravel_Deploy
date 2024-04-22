** ScreenShot of Codes from Vagrant VMs (MAster and Slave) **

## Stage 1: Provisioning the master amd slave nodes and start it up using [vagrant up and vagrant provison] after setting from vagrantfile ##

PS C:\Users\Mrs Nte\vagrant\webservers> nano vagrantfile
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant up
Bringing machine 'master' up with 'virtualbox' provider...
Bringing machine 'slave' up with 'virtualbox' provider...
==> master: Importing base box 'ubuntu/focal64'...
==> master: Matching MAC address for NAT networking...
==> master: Checking if box 'ubuntu/focal64' version '20231207.0.0' is up to date...
==> master: Setting the name of the VM: webservers_master_1713726301862_98023
==> master: Clearing any previously set network interfaces...
==> master: Preparing network interfaces based on configuration...
    master: Adapter 1: nat
    master: Adapter 2: hostonly
==> master: Forwarding ports...
    master: 80 (guest) => 8085 (host) (adapter 1)
    master: 22 (guest) => 2222 (host) (adapter 1)
==> master: Running 'pre-boot' VM customizations...
==> master: Booting VM...
==> master: Waiting for machine to boot. This may take a few minutes...
    master: SSH address: 127.0.0.1:2222
    master: SSH username: vagrant
    master: SSH auth method: private key
    master: Warning: Connection reset. Retrying...
    master: Warning: Connection aborted. Retrying...
    master: Warning: Connection aborted. Retrying...
    master:
    master: Vagrant insecure key detected. Vagrant will automatically replace
    master: this with a newly generated keypair for better security.
    master:
    master: Inserting generated public key within guest...
==> master: Machine booted and ready!
==> master: Checking for guest additions in VM...
    master: The guest additions on this VM do not match the installed version of
    master: VirtualBox! In most cases this is fine, but in rare cases it can
    master: prevent things such as shared folders from working properly. If you see
    master: shared folder errors, please make sure the guest additions within the
    master: virtual machine match the version of VirtualBox you have installed on
    master: your host and reload your VM.
    master:
    master: Guest Additions Version: 6.1.38
    master: VirtualBox Version: 7.0
==> master: Setting hostname...
==> master: Configuring and enabling network interfaces...
==> master: Mounting shared folders...
    master: /vagrant => C:/Users/Mrs Nte/vagrant/webservers
==> master: Running provisioner: shell...
    master: Running: inline script
    master: Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
    master: Get:2 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
    master: Get:3 http://archive.ubuntu.com/ubuntu focal-backports InRelease [108 kB]
    master: Get:4 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [8628 kB]
    master: Get:5 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
    master: Get:6 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [2890 kB]
    master: Get:7 http://archive.ubuntu.com/ubuntu focal/universe Translation-en [5124 kB]
    master: Get:8 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [435 kB]
    master: Get:9 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [2772 kB]
    master: Get:10 http://archive.ubuntu.com/ubuntu focal/universe amd64 c-n-f Metadata [265 kB]
    master: Get:11 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [144 kB]
    master: Get:12 http://archive.ubuntu.com/ubuntu focal/multiverse Translation-en [104 kB]
    master: Get:13 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 c-n-f Metadata [9136 B]
    master: Get:14 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [3268 kB]
    master: Get:15 http://archive.ubuntu.com/ubuntu focal-updates/main Translation-en [517 kB]
    master: Get:16 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [2889 kB]
    master: Get:17 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [387 kB]
    master: Get:18 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [956 kB]
    master: Get:19 http://archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [403 kB]
    master: Get:20 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [201 kB]
    master: Get:21 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [19.2 kB]
    master: Get:22 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [24.0 kB]
    master: Get:23 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [5904 B]
    master: Get:24 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [548 B]
    master: Get:25 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [1181 kB]
    master: Get:26 http://archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [283 kB]
    master: Get:27 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [25.7 kB]
    master: Get:28 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [26.2 kB]
    master: Get:29 http://archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [7880 B]
    master: Get:30 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [620 B]
    master: Get:31 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 Packages [45.7 kB]
    master: Get:32 http://archive.ubuntu.com/ubuntu focal-backports/main Translation-en [16.3 kB]
    master: Get:33 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 c-n-f Metadata [1420 B]
    master: Get:34 http://archive.ubuntu.com/ubuntu focal-backports/restricted amd64 c-n-f Metadata [116 B]
    master: Get:35 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [25.0 kB]
    master: Get:36 http://archive.ubuntu.com/ubuntu focal-backports/universe Translation-en [16.3 kB]
    master: Get:37 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 c-n-f Metadata [880 B]
    master: Get:38 http://archive.ubuntu.com/ubuntu focal-backports/multiverse amd64 c-n-f Metadata [116 B]
    master: Fetched 31.0 MB in 2min 34s (202 kB/s)
    master: Reading package lists...
    master: Reading package lists...
    master: Building dependency tree...
    master: Reading state information...
    master: The following NEW packages will be installed:
    master:   net-tools
    master: 0 upgraded, 1 newly installed, 0 to remove and 83 not upgraded.
    master: Need to get 196 kB of archives.
    master: After this operation, 864 kB of additional disk space will be used.
    master: Get:1 http://archive.ubuntu.com/ubuntu focal/main amd64 net-tools amd64 1.60+git20180626.aebd88e-1ubuntu1 [196 kB]
    master: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    master: Fetched 196 kB in 2s (96.3 kB/s)
    master: Selecting previously unselected package net-tools.
(Reading database ... 63756 files and directories currently installed.)
    master: Preparing to unpack .../net-tools_1.60+git20180626.aebd88e-1ubuntu1_amd64.deb ...
    master: Unpacking net-tools (1.60+git20180626.aebd88e-1ubuntu1) ...
    master: Setting up net-tools (1.60+git20180626.aebd88e-1ubuntu1) ...
    master: Processing triggers for man-db (2.9.1-1) ...
    master: Reading package lists...
    master: Building dependency tree...
    master: Reading state information...
    master: The following additional packages will be installed:
    master:   libavahi-common-data libavahi-common3 libavahi-core7 libdaemon0
    master: Suggested packages:
    master:   avahi-autoipd avahi-autoipd | zeroconf
    master: The following NEW packages will be installed:
    master:   avahi-daemon libavahi-common-data libavahi-common3 libavahi-core7 libdaemon0
    master:   libnss-mdns
    master: 0 upgraded, 6 newly installed, 0 to remove and 83 not upgraded.
    master: Need to get 223 kB of archives.
    master: After this operation, 994 kB of additional disk space will be used.
    master: Get:1 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libavahi-common-data amd64 0.7-4ubuntu7.3 [21.4 kB]
    master: Get:2 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libavahi-common3 amd64 0.7-4ubuntu7.3 [21.9 kB]
    master: Get:3 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libavahi-core7 amd64 0.7-4ubuntu7.3 [82.1 kB]
    master: Get:4 http://archive.ubuntu.com/ubuntu focal/main amd64 libdaemon0 amd64 0.14-7 [13.9 kB]
    master: Get:5 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 avahi-daemon amd64 0.7-4ubuntu7.3 [60.8 kB]
    master: Get:6 http://archive.ubuntu.com/ubuntu focal/main amd64 libnss-mdns amd64 0.14.1-1ubuntu1 [22.9 kB]
    master: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    master: Fetched 223 kB in 2s (102 kB/s)
    master: Selecting previously unselected package libavahi-common-data:amd64.
(Reading database ... 63805 files and directories currently installed.)
    master: Preparing to unpack .../0-libavahi-common-data_0.7-4ubuntu7.3_amd64.deb ...
    master: Unpacking libavahi-common-data:amd64 (0.7-4ubuntu7.3) ...
    master: Selecting previously unselected package libavahi-common3:amd64.
    master: Preparing to unpack .../1-libavahi-common3_0.7-4ubuntu7.3_amd64.deb ...
    master: Unpacking libavahi-common3:amd64 (0.7-4ubuntu7.3) ...
    master: Selecting previously unselected package libavahi-core7:amd64.
    master: Preparing to unpack .../2-libavahi-core7_0.7-4ubuntu7.3_amd64.deb ...
    master: Unpacking libavahi-core7:amd64 (0.7-4ubuntu7.3) ...
    master: Selecting previously unselected package libdaemon0:amd64.
    master: Preparing to unpack .../3-libdaemon0_0.14-7_amd64.deb ...
    master: Unpacking libdaemon0:amd64 (0.14-7) ...
    master: Selecting previously unselected package avahi-daemon.
    master: Preparing to unpack .../4-avahi-daemon_0.7-4ubuntu7.3_amd64.deb ...
    master: Unpacking avahi-daemon (0.7-4ubuntu7.3) ...
    master: Selecting previously unselected package libnss-mdns:amd64.
    master: Preparing to unpack .../5-libnss-mdns_0.14.1-1ubuntu1_amd64.deb ...
    master: Unpacking libnss-mdns:amd64 (0.14.1-1ubuntu1) ...
    master: Setting up libavahi-common-data:amd64 (0.7-4ubuntu7.3) ...
    master: Setting up libdaemon0:amd64 (0.14-7) ...
    master: Setting up libavahi-common3:amd64 (0.7-4ubuntu7.3) ...
    master: Setting up libavahi-core7:amd64 (0.7-4ubuntu7.3) ...
    master: Setting up avahi-daemon (0.7-4ubuntu7.3) ...
    master: Created symlink /etc/systemd/system/dbus-org.freedesktop.Avahi.service → /lib/systemd/system/avahi-daemon.service.
    master: Created symlink /etc/systemd/system/multi-user.target.wants/avahi-daemon.service → /lib/systemd/system/avahi-daemon.service.
    master: Created symlink /etc/systemd/system/sockets.target.wants/avahi-daemon.socket → /lib/systemd/system/avahi-daemon.socket.
    master: Setting up libnss-mdns:amd64 (0.14.1-1ubuntu1) ...
    master: First installation detected...
    master: Checking NSS setup...
    master: Processing triggers for systemd (245.4-4ubuntu3.22) ...
    master: Processing triggers for man-db (2.9.1-1) ...
    master: Processing triggers for dbus (1.12.16-2ubuntu2.3) ...
    master: Processing triggers for libc-bin (2.31-0ubuntu9.14) ...
    master: Reading package lists...
    master: Building dependency tree...
    master: Reading state information...
    master: The following additional packages will be installed:
    master:   ieee-data python3-argcomplete python3-crypto python3-dnspython
    master:   python3-jmespath python3-kerberos python3-libcloud python3-lockfile
    master:   python3-netaddr python3-ntlm-auth python3-requests-kerberos
    master:   python3-requests-ntlm python3-selinux python3-winrm python3-xmltodict
    master: Suggested packages:
    master:   cowsay sshpass python-lockfile-doc ipython3 python-netaddr-docs
    master: The following NEW packages will be installed:
    master:   ansible ieee-data python3-argcomplete python3-crypto python3-dnspython
    master:   python3-jmespath python3-kerberos python3-libcloud python3-lockfile
    master:   python3-netaddr python3-ntlm-auth python3-requests-kerberos
    master:   python3-requests-ntlm python3-selinux python3-winrm python3-xmltodict
    master: 0 upgraded, 16 newly installed, 0 to remove and 83 not upgraded.
    master: Need to get 9644 kB of archives.
    master: After this operation, 90.2 MB of additional disk space will be used.
    master: Get:1 http://archive.ubuntu.com/ubuntu focal/main amd64 python3-crypto amd64 2.6.1-13ubuntu2 [237 kB]
    master: Get:2 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-dnspython all 1.16.0-1ubuntu1 [89.2 kB]
    master: Get:3 http://archive.ubuntu.com/ubuntu focal/main amd64 ieee-data all 20180805.1 [1589 kB]
    master: Get:4 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-netaddr all 0.7.19-3ubuntu1 [236 kB]
    master: Get:5 http://archive.ubuntu.com/ubuntu focal/universe amd64 ansible all 2.9.6+dfsg-1 [5794 kB]
    master: Get:6 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-argcomplete all 1.8.1-1.3ubuntu1 [27.2 kB]
    master: Get:7 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-jmespath all 0.9.4-2ubuntu1 [21.5 kB]
    master: Get:8 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-kerberos amd64 1.1.14-3.1build1 [22.6 kB]
    master: Get:9 http://archive.ubuntu.com/ubuntu focal/main amd64 python3-lockfile all 1:0.12.2-2ubuntu2 [14.6 kB]
    master: Get:10 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-libcloud all 2.8.0-1 [1403 kB]
    master: Get:11 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-ntlm-auth all 1.1.0-1 [19.6 kB]
    master: Get:12 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-requests-kerberos all 0.12.0-2 [11.9 kB]
    master: Get:13 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-requests-ntlm all 1.1.0-1 [6004 B]
    master: Get:14 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-selinux amd64 3.0-1build2 [139 kB]
    master: Get:15 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-xmltodict all 0.12.0-1 [12.6 kB]
    master: Get:16 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-winrm all 0.3.0-2 [21.7 kB]
    master: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    master: Fetched 9644 kB in 15s (639 kB/s)
    master: Selecting previously unselected package python3-crypto.
(Reading database ... 63882 files and directories currently installed.)
    master: Preparing to unpack .../00-python3-crypto_2.6.1-13ubuntu2_amd64.deb ...
    master: Unpacking python3-crypto (2.6.1-13ubuntu2) ...
    master: Selecting previously unselected package python3-dnspython.
    master: Preparing to unpack .../01-python3-dnspython_1.16.0-1ubuntu1_all.deb ...
    master: Unpacking python3-dnspython (1.16.0-1ubuntu1) ...
    master: Selecting previously unselected package ieee-data.
    master: Preparing to unpack .../02-ieee-data_20180805.1_all.deb ...
    master: Unpacking ieee-data (20180805.1) ...
    master: Selecting previously unselected package python3-netaddr.
    master: Preparing to unpack .../03-python3-netaddr_0.7.19-3ubuntu1_all.deb ...
    master: Unpacking python3-netaddr (0.7.19-3ubuntu1) ...
    master: Selecting previously unselected package ansible.
    master: Preparing to unpack .../04-ansible_2.9.6+dfsg-1_all.deb ...
    master: Unpacking ansible (2.9.6+dfsg-1) ...
    master: Selecting previously unselected package python3-argcomplete.
    master: Preparing to unpack .../05-python3-argcomplete_1.8.1-1.3ubuntu1_all.deb ...
    master: Unpacking python3-argcomplete (1.8.1-1.3ubuntu1) ...
    master: Selecting previously unselected package python3-jmespath.
    master: Preparing to unpack .../06-python3-jmespath_0.9.4-2ubuntu1_all.deb ...
    master: Unpacking python3-jmespath (0.9.4-2ubuntu1) ...
    master: Selecting previously unselected package python3-kerberos.
    master: Preparing to unpack .../07-python3-kerberos_1.1.14-3.1build1_amd64.deb ...
    master: Unpacking python3-kerberos (1.1.14-3.1build1) ...
    master: Selecting previously unselected package python3-lockfile.
    master: Preparing to unpack .../08-python3-lockfile_1%3a0.12.2-2ubuntu2_all.deb ...
    master: Unpacking python3-lockfile (1:0.12.2-2ubuntu2) ...
    master: Selecting previously unselected package python3-libcloud.
    master: Preparing to unpack .../09-python3-libcloud_2.8.0-1_all.deb ...
    master: Unpacking python3-libcloud (2.8.0-1) ...
    master: Selecting previously unselected package python3-ntlm-auth.
    master: Preparing to unpack .../10-python3-ntlm-auth_1.1.0-1_all.deb ...
    master: Unpacking python3-ntlm-auth (1.1.0-1) ...
    master: Selecting previously unselected package python3-requests-kerberos.
    master: Preparing to unpack .../11-python3-requests-kerberos_0.12.0-2_all.deb ...
    master: Unpacking python3-requests-kerberos (0.12.0-2) ...
    master: Selecting previously unselected package python3-requests-ntlm.
    master: Preparing to unpack .../12-python3-requests-ntlm_1.1.0-1_all.deb ...
    master: Unpacking python3-requests-ntlm (1.1.0-1) ...
    master: Selecting previously unselected package python3-selinux.
    master: Preparing to unpack .../13-python3-selinux_3.0-1build2_amd64.deb ...
    master: Unpacking python3-selinux (3.0-1build2) ...
    master: Selecting previously unselected package python3-xmltodict.
    master: Preparing to unpack .../14-python3-xmltodict_0.12.0-1_all.deb ...
    master: Unpacking python3-xmltodict (0.12.0-1) ...
    master: Selecting previously unselected package python3-winrm.
    master: Preparing to unpack .../15-python3-winrm_0.3.0-2_all.deb ...
    master: Unpacking python3-winrm (0.3.0-2) ...
    master: Setting up python3-lockfile (1:0.12.2-2ubuntu2) ...
    master: Setting up python3-ntlm-auth (1.1.0-1) ...
    master: Setting up python3-kerberos (1.1.14-3.1build1) ...
    master: Setting up python3-xmltodict (0.12.0-1) ...
    master: Setting up python3-jmespath (0.9.4-2ubuntu1) ...
    master: Setting up python3-requests-kerberos (0.12.0-2) ...
    master: Setting up ieee-data (20180805.1) ...
    master: Setting up python3-dnspython (1.16.0-1ubuntu1) ...
    master: Setting up python3-selinux (3.0-1build2) ...
    master: Setting up python3-crypto (2.6.1-13ubuntu2) ...
    master: Setting up python3-argcomplete (1.8.1-1.3ubuntu1) ...
    master: Setting up python3-requests-ntlm (1.1.0-1) ...
    master: Setting up python3-libcloud (2.8.0-1) ...
    master: Setting up python3-netaddr (0.7.19-3ubuntu1) ...
    master: Setting up python3-winrm (0.3.0-2) ...
    master: Setting up ansible (2.9.6+dfsg-1) ...
    master: Processing triggers for man-db (2.9.1-1) ...
==> slave: Importing base box 'ubuntu/focal64'...
==> slave: Matching MAC address for NAT networking...
==> slave: Checking if box 'ubuntu/focal64' version '20231207.0.0' is up to date...
==> slave: Setting the name of the VM: webservers_slave_1713726935279_41865
==> slave: Fixed port collision for 22 => 2222. Now on port 2200.
==> slave: Clearing any previously set network interfaces...
==> slave: Preparing network interfaces based on configuration...
    slave: Adapter 1: nat
    slave: Adapter 2: hostonly
==> slave: Forwarding ports...
    slave: 80 (guest) => 8086 (host) (adapter 1)
    slave: 22 (guest) => 2200 (host) (adapter 1)
==> slave: Running 'pre-boot' VM customizations...
==> slave: Booting VM...
==> slave: Waiting for machine to boot. This may take a few minutes...
    slave: SSH address: 127.0.0.1:2200
    slave: SSH username: vagrant
    slave: SSH auth method: private key
    slave: Warning: Connection aborted. Retrying...
    slave: Warning: Connection aborted. Retrying...
    slave:
    slave: Vagrant insecure key detected. Vagrant will automatically replace
    slave: this with a newly generated keypair for better security.
    slave:
    slave: Inserting generated public key within guest...
==> slave: Machine booted and ready!
==> slave: Checking for guest additions in VM...
    slave: The guest additions on this VM do not match the installed version of
    slave: VirtualBox! In most cases this is fine, but in rare cases it can
    slave: prevent things such as shared folders from working properly. If you see
    slave: shared folder errors, please make sure the guest additions within the
    slave: virtual machine match the version of VirtualBox you have installed on
    slave: your host and reload your VM.
    slave:
    slave: Guest Additions Version: 6.1.38
    slave: VirtualBox Version: 7.0
==> slave: Setting hostname...
==> slave: Configuring and enabling network interfaces...
==> slave: Mounting shared folders...
    slave: /vagrant => C:/Users/Mrs Nte/vagrant/webservers
==> slave: Running provisioner: shell...
    slave: Running: inline script
    slave: Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
    slave: Get:2 http://security.ubuntu.com/ubuntu focal-security InRelease [114 kB]
    slave: Get:3 http://archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
    slave: Get:4 http://archive.ubuntu.com/ubuntu focal-backports InRelease [108 kB]
    slave: Get:5 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [8628 kB]
    slave: Get:6 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [2890 kB]
    slave: Get:7 http://archive.ubuntu.com/ubuntu focal/universe Translation-en [5124 kB]
    slave: Get:8 http://archive.ubuntu.com/ubuntu focal/universe amd64 c-n-f Metadata [265 kB]
    slave: Get:9 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [144 kB]
    slave: Get:10 http://archive.ubuntu.com/ubuntu focal/multiverse Translation-en [104 kB]
    slave: Get:11 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 c-n-f Metadata [9136 B]
    slave: Get:12 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [3268 kB]
    slave: Get:13 http://archive.ubuntu.com/ubuntu focal-updates/main Translation-en [517 kB]
    slave: Get:14 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [2889 kB]
    slave: Get:15 http://archive.ubuntu.com/ubuntu focal-updates/restricted Translation-en [403 kB]
    slave: Get:16 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [1181 kB]
    slave: Get:17 http://archive.ubuntu.com/ubuntu focal-updates/universe Translation-en [283 kB]
    slave: Get:18 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 c-n-f Metadata [25.7 kB]
    slave: Get:19 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [26.2 kB]
    slave: Get:20 http://archive.ubuntu.com/ubuntu focal-updates/multiverse Translation-en [7880 B]
    slave: Get:21 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 c-n-f Metadata [620 B]
    slave: Get:22 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 Packages [45.7 kB]
    slave: Get:23 http://archive.ubuntu.com/ubuntu focal-backports/main Translation-en [16.3 kB]
    slave: Get:24 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 c-n-f Metadata [1420 B]
    slave: Get:25 http://archive.ubuntu.com/ubuntu focal-backports/restricted amd64 c-n-f Metadata [116 B]
    slave: Get:26 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [25.0 kB]
    slave: Get:27 http://archive.ubuntu.com/ubuntu focal-backports/universe Translation-en [16.3 kB]
    slave: Get:28 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 c-n-f Metadata [880 B]
    slave: Get:29 http://archive.ubuntu.com/ubuntu focal-backports/multiverse amd64 c-n-f Metadata [116 B]
    slave: Get:30 http://security.ubuntu.com/ubuntu focal-security/main Translation-en [435 kB]
    slave: Get:31 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [2772 kB]
    slave: Get:32 http://security.ubuntu.com/ubuntu focal-security/restricted Translation-en [387 kB]
    slave: Get:33 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [956 kB]
    slave: Get:34 http://security.ubuntu.com/ubuntu focal-security/universe Translation-en [201 kB]
    slave: Get:35 http://security.ubuntu.com/ubuntu focal-security/universe amd64 c-n-f Metadata [19.2 kB]
    slave: Get:36 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [24.0 kB]
    slave: Get:37 http://security.ubuntu.com/ubuntu focal-security/multiverse Translation-en [5904 B]
    slave: Get:38 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 c-n-f Metadata [548 B]
    slave: Fetched 31.0 MB in 34s (924 kB/s)
    slave: Reading package lists...
    slave: Reading package lists...
    slave: Building dependency tree...
    slave: Reading state information...
    slave: The following NEW packages will be installed:
    slave:   net-tools
    slave: 0 upgraded, 1 newly installed, 0 to remove and 83 not upgraded.
    slave: Need to get 196 kB of archives.
    slave: After this operation, 864 kB of additional disk space will be used.
    slave: Get:1 http://archive.ubuntu.com/ubuntu focal/main amd64 net-tools amd64 1.60+git20180626.aebd88e-1ubuntu1 [196 kB]
    slave: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    slave: Fetched 196 kB in 2s (107 kB/s)
    slave: Selecting previously unselected package net-tools.
(Reading database ... 63756 files and directories currently installed.)
    slave: Preparing to unpack .../net-tools_1.60+git20180626.aebd88e-1ubuntu1_amd64.deb ...
    slave: Unpacking net-tools (1.60+git20180626.aebd88e-1ubuntu1) ...
    slave: Setting up net-tools (1.60+git20180626.aebd88e-1ubuntu1) ...
    slave: Processing triggers for man-db (2.9.1-1) ...
    slave: Reading package lists...
    slave: Building dependency tree...
    slave: Reading state information...
    slave: The following additional packages will be installed:
    slave:   libavahi-common-data libavahi-common3 libavahi-core7 libdaemon0
    slave: Suggested packages:
    slave:   avahi-autoipd avahi-autoipd | zeroconf
    slave: The following NEW packages will be installed:
    slave:   avahi-daemon libavahi-common-data libavahi-common3 libavahi-core7 libdaemon0
    slave:   libnss-mdns
    slave: 0 upgraded, 6 newly installed, 0 to remove and 83 not upgraded.
    slave: Need to get 223 kB of archives.
    slave: After this operation, 994 kB of additional disk space will be used.
    slave: Get:1 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libavahi-common-data amd64 0.7-4ubuntu7.3 [21.4 kB]
    slave: Get:2 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libavahi-common3 amd64 0.7-4ubuntu7.3 [21.9 kB]
    slave: Get:3 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libavahi-core7 amd64 0.7-4ubuntu7.3 [82.1 kB]
    slave: Get:4 http://archive.ubuntu.com/ubuntu focal/main amd64 libdaemon0 amd64 0.14-7 [13.9 kB]
    slave: Get:5 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 avahi-daemon amd64 0.7-4ubuntu7.3 [60.8 kB]
    slave: Get:6 http://archive.ubuntu.com/ubuntu focal/main amd64 libnss-mdns amd64 0.14.1-1ubuntu1 [22.9 kB]
    slave: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    slave: Fetched 223 kB in 2s (109 kB/s)
    slave: Selecting previously unselected package libavahi-common-data:amd64.
(Reading database ... 63805 files and directories currently installed.)
    slave: Preparing to unpack .../0-libavahi-common-data_0.7-4ubuntu7.3_amd64.deb ...
    slave: Unpacking libavahi-common-data:amd64 (0.7-4ubuntu7.3) ...
    slave: Selecting previously unselected package libavahi-common3:amd64.
    slave: Preparing to unpack .../1-libavahi-common3_0.7-4ubuntu7.3_amd64.deb ...
    slave: Unpacking libavahi-common3:amd64 (0.7-4ubuntu7.3) ...
    slave: Selecting previously unselected package libavahi-core7:amd64.
    slave: Preparing to unpack .../2-libavahi-core7_0.7-4ubuntu7.3_amd64.deb ...
    slave: Unpacking libavahi-core7:amd64 (0.7-4ubuntu7.3) ...
    slave: Selecting previously unselected package libdaemon0:amd64.
    slave: Preparing to unpack .../3-libdaemon0_0.14-7_amd64.deb ...
    slave: Unpacking libdaemon0:amd64 (0.14-7) ...
    slave: Selecting previously unselected package avahi-daemon.
    slave: Preparing to unpack .../4-avahi-daemon_0.7-4ubuntu7.3_amd64.deb ...
    slave: Unpacking avahi-daemon (0.7-4ubuntu7.3) ...
    slave: Selecting previously unselected package libnss-mdns:amd64.
    slave: Preparing to unpack .../5-libnss-mdns_0.14.1-1ubuntu1_amd64.deb ...
    slave: Unpacking libnss-mdns:amd64 (0.14.1-1ubuntu1) ...
    slave: Setting up libavahi-common-data:amd64 (0.7-4ubuntu7.3) ...
    slave: Setting up libdaemon0:amd64 (0.14-7) ...
    slave: Setting up libavahi-common3:amd64 (0.7-4ubuntu7.3) ...
    slave: Setting up libavahi-core7:amd64 (0.7-4ubuntu7.3) ...
    slave: Setting up avahi-daemon (0.7-4ubuntu7.3) ...
    slave: Created symlink /etc/systemd/system/dbus-org.freedesktop.Avahi.service → /lib/systemd/system/avahi-daemon.service.
    slave: Created symlink /etc/systemd/system/multi-user.target.wants/avahi-daemon.service → /lib/systemd/system/avahi-daemon.service.
    slave: Created symlink /etc/systemd/system/sockets.target.wants/avahi-daemon.socket → /lib/systemd/system/avahi-daemon.socket.
    slave: Setting up libnss-mdns:amd64 (0.14.1-1ubuntu1) ...
    slave: First installation detected...
    slave: Checking NSS setup...
    slave: Processing triggers for systemd (245.4-4ubuntu3.22) ...
    slave: Processing triggers for man-db (2.9.1-1) ...
    slave: Processing triggers for dbus (1.12.16-2ubuntu2.3) ...
    slave: Processing triggers for libc-bin (2.31-0ubuntu9.14) ...
    slave: Reading package lists...
    slave: Building dependency tree...
    slave: Reading state information...
    slave: The following additional packages will be installed:
    slave:   ieee-data python3-argcomplete python3-crypto python3-dnspython
    slave:   python3-jmespath python3-kerberos python3-libcloud python3-lockfile
    slave:   python3-netaddr python3-ntlm-auth python3-requests-kerberos
    slave:   python3-requests-ntlm python3-selinux python3-winrm python3-xmltodict
    slave: Suggested packages:
    slave:   cowsay sshpass python-lockfile-doc ipython3 python-netaddr-docs
    slave: The following NEW packages will be installed:
    slave:   ansible ieee-data python3-argcomplete python3-crypto python3-dnspython
    slave:   python3-jmespath python3-kerberos python3-libcloud python3-lockfile
    slave:   python3-netaddr python3-ntlm-auth python3-requests-kerberos
    slave:   python3-requests-ntlm python3-selinux python3-winrm python3-xmltodict
    slave: 0 upgraded, 16 newly installed, 0 to remove and 83 not upgraded.
    slave: Need to get 9644 kB of archives.
    slave: After this operation, 90.2 MB of additional disk space will be used.
    slave: Get:1 http://archive.ubuntu.com/ubuntu focal/main amd64 python3-crypto amd64 2.6.1-13ubuntu2 [237 kB]
    slave: Get:2 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-dnspython all 1.16.0-1ubuntu1 [89.2 kB]
    slave: Get:3 http://archive.ubuntu.com/ubuntu focal/main amd64 ieee-data all 20180805.1 [1589 kB]
    slave: Get:4 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-netaddr all 0.7.19-3ubuntu1 [236 kB]
    slave: Get:5 http://archive.ubuntu.com/ubuntu focal/universe amd64 ansible all 2.9.6+dfsg-1 [5794 kB]
    slave: Get:6 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-argcomplete all 1.8.1-1.3ubuntu1 [27.2 kB]
    slave: Get:7 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-jmespath all 0.9.4-2ubuntu1 [21.5 kB]
    slave: Get:8 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-kerberos amd64 1.1.14-3.1build1 [22.6 kB]
    slave: Get:9 http://archive.ubuntu.com/ubuntu focal/main amd64 python3-lockfile all 1:0.12.2-2ubuntu2 [14.6 kB]
    slave: Get:10 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-libcloud all 2.8.0-1 [1403 kB]
    slave: Get:11 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-ntlm-auth all 1.1.0-1 [19.6 kB]
    slave: Get:12 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-requests-kerberos all 0.12.0-2 [11.9 kB]
    slave: Get:13 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-requests-ntlm all 1.1.0-1 [6004 B]
    slave: Get:14 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-selinux amd64 3.0-1build2 [139 kB]
    slave: Get:15 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-xmltodict all 0.12.0-1 [12.6 kB]
    slave: Get:16 http://archive.ubuntu.com/ubuntu focal/universe amd64 python3-winrm all 0.3.0-2 [21.7 kB]
    slave: dpkg-preconfigure: unable to re-open stdin: No such file or directory
    slave: Fetched 9644 kB in 57s (168 kB/s)
    slave: Selecting previously unselected package python3-crypto.
(Reading database ... 63882 files and directories currently installed.)
    slave: Preparing to unpack .../00-python3-crypto_2.6.1-13ubuntu2_amd64.deb ...
    slave: Unpacking python3-crypto (2.6.1-13ubuntu2) ...
    slave: Selecting previously unselected package python3-dnspython.
    slave: Preparing to unpack .../01-python3-dnspython_1.16.0-1ubuntu1_all.deb ...
    slave: Unpacking python3-dnspython (1.16.0-1ubuntu1) ...
    slave: Selecting previously unselected package ieee-data.
    slave: Preparing to unpack .../02-ieee-data_20180805.1_all.deb ...
    slave: Unpacking ieee-data (20180805.1) ...
    slave: Selecting previously unselected package python3-netaddr.
    slave: Preparing to unpack .../03-python3-netaddr_0.7.19-3ubuntu1_all.deb ...
    slave: Unpacking python3-netaddr (0.7.19-3ubuntu1) ...
    slave: Selecting previously unselected package ansible.
    slave: Preparing to unpack .../04-ansible_2.9.6+dfsg-1_all.deb ...
    slave: Unpacking ansible (2.9.6+dfsg-1) ...
    slave: Selecting previously unselected package python3-argcomplete.
    slave: Preparing to unpack .../05-python3-argcomplete_1.8.1-1.3ubuntu1_all.deb ...
    slave: Unpacking python3-argcomplete (1.8.1-1.3ubuntu1) ...
    slave: Selecting previously unselected package python3-jmespath.
    slave: Preparing to unpack .../06-python3-jmespath_0.9.4-2ubuntu1_all.deb ...
    slave: Unpacking python3-jmespath (0.9.4-2ubuntu1) ...
    slave: Selecting previously unselected package python3-kerberos.
    slave: Preparing to unpack .../07-python3-kerberos_1.1.14-3.1build1_amd64.deb ...
    slave: Unpacking python3-kerberos (1.1.14-3.1build1) ...
    slave: Selecting previously unselected package python3-lockfile.
    slave: Preparing to unpack .../08-python3-lockfile_1%3a0.12.2-2ubuntu2_all.deb ...
    slave: Unpacking python3-lockfile (1:0.12.2-2ubuntu2) ...
    slave: Selecting previously unselected package python3-libcloud.
    slave: Preparing to unpack .../09-python3-libcloud_2.8.0-1_all.deb ...
    slave: Unpacking python3-libcloud (2.8.0-1) ...
    slave: Selecting previously unselected package python3-ntlm-auth.
    slave: Preparing to unpack .../10-python3-ntlm-auth_1.1.0-1_all.deb ...
    slave: Unpacking python3-ntlm-auth (1.1.0-1) ...
    slave: Selecting previously unselected package python3-requests-kerberos.
    slave: Preparing to unpack .../11-python3-requests-kerberos_0.12.0-2_all.deb ...
    slave: Unpacking python3-requests-kerberos (0.12.0-2) ...
    slave: Selecting previously unselected package python3-requests-ntlm.
    slave: Preparing to unpack .../12-python3-requests-ntlm_1.1.0-1_all.deb ...
    slave: Unpacking python3-requests-ntlm (1.1.0-1) ...
    slave: Selecting previously unselected package python3-selinux.
    slave: Preparing to unpack .../13-python3-selinux_3.0-1build2_amd64.deb ...
    slave: Unpacking python3-selinux (3.0-1build2) ...
    slave: Selecting previously unselected package python3-xmltodict.
    slave: Preparing to unpack .../14-python3-xmltodict_0.12.0-1_all.deb ...
    slave: Unpacking python3-xmltodict (0.12.0-1) ...
    slave: Selecting previously unselected package python3-winrm.
    slave: Preparing to unpack .../15-python3-winrm_0.3.0-2_all.deb ...
    slave: Unpacking python3-winrm (0.3.0-2) ...
    slave: Setting up python3-lockfile (1:0.12.2-2ubuntu2) ...
    slave: Setting up python3-ntlm-auth (1.1.0-1) ...
    slave: Setting up python3-kerberos (1.1.14-3.1build1) ...
    slave: Setting up python3-xmltodict (0.12.0-1) ...
    slave: Setting up python3-jmespath (0.9.4-2ubuntu1) ...
    slave: Setting up python3-requests-kerberos (0.12.0-2) ...
    slave: Setting up ieee-data (20180805.1) ...
    slave: Setting up python3-dnspython (1.16.0-1ubuntu1) ...
    slave: Setting up python3-selinux (3.0-1build2) ...
    slave: Setting up python3-crypto (2.6.1-13ubuntu2) ...
    slave: Setting up python3-argcomplete (1.8.1-1.3ubuntu1) ...
    slave: Setting up python3-requests-ntlm (1.1.0-1) ...
    slave: Setting up python3-libcloud (2.8.0-1) ...
    slave: Setting up python3-netaddr (0.7.19-3ubuntu1) ...
    slave: Setting up python3-winrm (0.3.0-2) ...
    slave: Setting up ansible (2.9.6+dfsg-1) ...
    slave: Processing triggers for man-db (2.9.1-1) ...

PS C:\Users\Mrs Nte\vagrant\webservers>
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant provision
==> master: Running provisioner: shell...
    master: Running: inline script
    master: Hit:1 http://archive.ubuntu.com/ubuntu focal InRelease
    master: Hit:2 http://security.ubuntu.com/ubuntu focal-security InRelease
    master: Hit:3 http://archive.ubuntu.com/ubuntu focal-updates InRelease
    master: Hit:4 http://archive.ubuntu.com/ubuntu focal-backports InRelease
    master: Reading package lists...
    master: Reading package lists...
    master: Building dependency tree...
    master: Reading state information...
    master: net-tools is already the newest version (1.60+git20180626.aebd88e-1ubuntu1).
    master: 0 upgraded, 0 newly installed, 0 to remove and 83 not upgraded.
    master: Reading package lists...
    master: Building dependency tree...
    master: Reading state information...
    master: libnss-mdns is already the newest version (0.14.1-1ubuntu1).
    master: avahi-daemon is already the newest version (0.7-4ubuntu7.3).
    master: 0 upgraded, 0 newly installed, 0 to remove and 83 not upgraded.
    master: Reading package lists...
    master: Building dependency tree...
    master: Reading state information...
    master: ansible is already the newest version (2.9.6+dfsg-1).
    master: 0 upgraded, 0 newly installed, 0 to remove and 83 not upgraded.
==> slave: Running provisioner: shell...
    slave: Running: inline script
    slave: Hit:1 http://security.ubuntu.com/ubuntu focal-security InRelease
    slave: Hit:2 http://archive.ubuntu.com/ubuntu focal InRelease
    slave: Hit:3 http://archive.ubuntu.com/ubuntu focal-updates InRelease
    slave: Hit:4 http://archive.ubuntu.com/ubuntu focal-backports InRelease
    slave: Reading package lists...
    slave: Reading package lists...
    slave: Building dependency tree...
    slave: Reading state information...
    slave: net-tools is already the newest version (1.60+git20180626.aebd88e-1ubuntu1).
    slave: 0 upgraded, 0 newly installed, 0 to remove and 83 not upgraded.
    slave: Reading package lists...
    slave: Building dependency tree...
    slave: Reading state information...
    slave: libnss-mdns is already the newest version (0.14.1-1ubuntu1).
    slave: avahi-daemon is already the newest version (0.7-4ubuntu7.3).
    slave: 0 upgraded, 0 newly installed, 0 to remove and 83 not upgraded.
    slave: Reading package lists...
    slave: Building dependency tree...
    slave: Reading state information...
    slave: ansible is already the newest version (2.9.6+dfsg-1).
    slave: 0 upgraded, 0 newly installed, 0 to remove and 83 not upgraded.
PS C:\Users\Mrs Nte\vagrant\webservers>


### Step 2a: Starting up the VMs ###

PS C:\Users\Mrs Nte\Desktop> cd ..
PS C:\Users\Mrs Nte> cd vagrant
PS C:\Users\Mrs Nte\vagrant> cd webservers
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant up master
Bringing machine 'master' up with 'virtualbox' provider...
==> master: Clearing any previously set forwarded ports...
==> master: Clearing any previously set network interfaces...
==> master: Preparing network interfaces based on configuration...
    master: Adapter 1: nat
    master: Adapter 2: hostonly
    master: Adapter 3: hostonly
==> master: Forwarding ports...
    master: 22 (guest) => 2222 (host) (adapter 1)
==> master: Running 'pre-boot' VM customizations...
==> master: Booting VM...
==> master: Waiting for machine to boot. This may take a few minutes...
    master: SSH address: 127.0.0.1:2222
    master: SSH username: vagrant
    master: SSH auth method: private key
    master: Warning: Connection reset. Retrying...
    master: Warning: Connection aborted. Retrying...
    master: Warning: Connection aborted. Retrying...
    master: Warning: Connection reset. Retrying...
==> master: Machine booted and ready!
==> master: Checking for guest additions in VM...
    master: The guest additions on this VM do not match the installed version of
    master: VirtualBox! In most cases this is fine, but in rare cases it can
    master: prevent things such as shared folders from working properly. If you see
    master: shared folder errors, please make sure the guest additions within the
    master: virtual machine match the version of VirtualBox you have installed on
    master: your host and reload your VM.
    master:
    master: Guest Additions Version: 5.2.42
    master: VirtualBox Version: 7.0
==> master: Setting hostname...
==> master: Configuring and enabling network interfaces...
==> master: Mounting shared folders...
    master: /vagrant => C:/Users/Mrs Nte/vagrant/webservers
==> master: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> master: flag to force provisioning. Provisioners marked to run always will still run.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant up slave
Bringing machine 'slave' up with 'virtualbox' provider...
==> slave: Clearing any previously set forwarded ports...
==> slave: Fixed port collision for 22 => 2222. Now on port 2200.
==> slave: Clearing any previously set network interfaces...
==> slave: Preparing network interfaces based on configuration...
    slave: Adapter 1: nat
    slave: Adapter 2: hostonly
    slave: Adapter 3: hostonly
==> slave: Forwarding ports...
    slave: 22 (guest) => 2200 (host) (adapter 1)
==> slave: Running 'pre-boot' VM customizations...
==> slave: Booting VM...
==> slave: Waiting for machine to boot. This may take a few minutes...
    slave: SSH address: 127.0.0.1:2200
    slave: SSH username: vagrant
    slave: SSH auth method: private key
    slave: Warning: Connection aborted. Retrying...
    slave: Warning: Connection reset. Retrying...
    slave: Warning: Connection aborted. Retrying...
    slave: Warning: Connection aborted. Retrying...
==> slave: Machine booted and ready!
==> slave: Checking for guest additions in VM...
    slave: The guest additions on this VM do not match the installed version of
    slave: VirtualBox! In most cases this is fine, but in rare cases it can
    slave: prevent things such as shared folders from working properly. If you see
    slave: shared folder errors, please make sure the guest additions within the
    slave: virtual machine match the version of VirtualBox you have installed on
    slave: your host and reload your VM.
    slave:
    slave: Guest Additions Version: 5.2.42
    slave: VirtualBox Version: 7.0
==> slave: Setting hostname...
==> slave: Configuring and enabling network interfaces...
==> slave: Mounting shared folders...
    slave: /vagrant => C:/Users/Mrs Nte/vagrant/webservers
==> slave: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> slave: flag to force provisioning. Provisioners marked to run always will still run.
PS C:\Users\Mrs Nte\vagrant\webservers>




#### Step 2b: SSH into the Master and the Slave to confirm configuration ####

PS C:\Users\Mrs Nte\vagrant\webservers>
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh master
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Apr 17 15:23:47 UTC 2024

  System load:  0.0               Processes:             99
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 13%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.10


Expanded Security Maintenance for Infrastructure is not enabled.

15 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Wed Apr 17 15:07:52 2024 from 10.0.2.2
vagrant@master:~$ exit
logout
Connection to 127.0.0.1 closed.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh slave
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Apr 17 15:24:43 UTC 2024

  System load:  0.06              Users logged in:       0
  Usage of /:   3.4% of 38.70GB   IP address for enp0s3: 10.0.2.15
  Memory usage: 13%               IP address for enp0s8: 192.168.30.10
  Swap usage:   0%                IP address for enp0s9: 192.168.30.11
  Processes:    96


Expanded Security Maintenance for Infrastructure is not enabled.

18 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Wed Apr 17 15:05:47 2024 from 10.0.2.2
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Wed Apr 17 15:24:43 UTC 2024

  System load:  0.06              Users logged in:       0
  Usage of /:   3.4% of 38.70GB   IP address for enp0s3: 10.0.2.15
  Memory usage: 13%               IP address for enp0s8: 192.168.30.10
  Swap usage:   0%                IP address for enp0s9: 192.168.30.11
  Processes:    96


Expanded Security Maintenance for Infrastructure is not enabled.

18 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Wed Apr 17 15:05:47 2024 from 10.0.2.2
vagrant@slave:~$





##### Step 2c: Checking Netork connectivity of the VMs #####

Connection to 127.0.0.1 closed.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh Slave
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 10:52:08 UTC 2024

  System load:  0.02              Processes:             98
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 13%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.11


Expanded Security Maintenance for Infrastructure is not enabled.

18 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Wed Apr 17 15:33:28 2024 from 10.0.2.2
vagrant@Slave:~$ ping 192.168.30.10
PING 192.168.32.10 (192.168.32.10) 56(84) bytes of data.
64 bytes from 192.168.32.10: icmp_seq=1 ttl=64 time=3.11 ms
64 bytes from 192.168.32.10: icmp_seq=2 ttl=64 time=2.31 ms
64 bytes from 192.168.32.10: icmp_seq=3 ttl=64 time=0.851 ms
64 bytes from 192.168.32.10: icmp_seq=4 ttl=64 time=1.93 ms
^C
--- 192.168.30.10 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3076ms
rtt min/avg/max/mdev = 0.851/2.055/3.118/0.815 ms
vagrant@Slave:~$ ping 192.168.32.11
PING 192.168.32.11 (192.168.32.11) 56(84) bytes of data.
64 bytes from 192.168.32.11: icmp_seq=1 ttl=64 time=0.071 ms
64 bytes from 192.168.32.11: icmp_seq=2 ttl=64 time=0.192 ms
64 bytes from 192.168.32.11: icmp_seq=3 ttl=64 time=0.152 ms
^C
--- 192.168.30.11 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2038ms
rtt min/avg/max/mdev = 0.071/0.138/0.192/0.051 ms
vagrant@Slave:~$ exit
logout
Connection to 127.0.0.1 closed.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh Master
The machine with the name 'Master' was not found configured for
this Vagrant environment.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh master
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 10:54:25 UTC 2024

  System load:  0.08              Processes:             99
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 13%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.10


Expanded Security Maintenance for Infrastructure is not enabled.

15 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Thu Apr 18 10:51:29 2024 from 10.0.2.2
vagrant@Master:~$ ping 192.168.30.11
PING 192.168.32.11 (192.168.32.11) 56(84) bytes of data.
64 bytes from 192.168.32.11: icmp_seq=1 ttl=64 time=1.03 ms
64 bytes from 192.168.32.11: icmp_seq=2 ttl=64 time=5.54 ms
64 bytes from 192.168.32.11: icmp_seq=3 ttl=64 time=3.72 ms
64 bytes from 192.168.32.11: icmp_seq=4 ttl=64 time=2.28 ms
^C
--- 192.168.30.11 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3357ms
rtt min/avg/max/mdev = 1.035/3.145/5.540/1.678 ms
vagrant@Master:~$ ping 192.168.30.10
PING 192.168.32.10 (192.168.32.10) 56(84) bytes of data.
64 bytes from 192.168.32.10: icmp_seq=1 ttl=64 time=0.100 ms
64 bytes from 192.168.32.10: icmp_seq=2 ttl=64 time=0.100 ms
64 bytes from 192.168.32.10: icmp_seq=3 ttl=64 time=0.192 ms
64 bytes from 192.168.32.10: icmp_seq=4 ttl=64 time=0.100 ms

--- 192.168.30.10 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3062ms
rtt min/avg/max/mdev = 0.100/0.123/0.192/0.039 ms
^Cvagrant@Master:~$




###### Step 2d: Checking the status of the VMs ######

PS C:\Users\Mrs Nte\vagrant\webservers> vagrant status
Current machine states:

Master                    running (virtualbox)
Slave                     running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant global-status
id       name    provider   state    directory
--------------------------------------------------------------------------------
1766181  default virtualbox poweroff C:/Users/Mrs Nte/vagrant/ubuntu22.04.3-LTS
8357ace  master  virtualbox running C:/Users/Mrs Nte/vagrant/webservers
8fc43d7  slave   virtualbox running C:/Users/Mrs Nte/vagrant/webservers


The above shows information about all known Vagrant environments
on this machine. This data is cached and may not be completely
up-to-date (use "vagrant global-status --prune" to prune invalid
entries). To interact with any of the machines, you can go to that
directory and run Vagrant, or you can use the ID directly with
Vagrant commands from any directory. For example:
"vagrant destroy 1a2b3c4d"
PS C:\Users\Mrs Nte\vagrant\webservers> nano vagrantfile

To see if they can see their self (ping Slave.local or ping Master.local)

PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh Master
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 11:23:08 UTC 2024

  System load:  0.12              Processes:             102
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 12%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.10


Expanded Security Maintenance for Infrastructure is not enabled.

15 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 11:23:08 UTC 2024

  System load:  0.12              Processes:             102
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 12%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.32.10


Expanded Security Maintenance for Infrastructure is not enabled.

15 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04


Last login: Thu Apr 18 10:54:27 2024 from 10.0.2.2
vagrant@Master:~$ ping Slave.local
PING Slave.local (192.168.32.11) 56(84) bytes of data.
64 bytes from 192.168.32.11: icmp_seq=1 ttl=64 time=3.18 ms
64 bytes from 192.168.32.11: icmp_seq=2 ttl=64 time=3.29 ms
64 bytes from 192.168.32.11: icmp_seq=3 ttl=64 time=1.50 ms
64 bytes from 192.168.32.11: icmp_seq=4 ttl=64 time=2.57 ms
64 bytes from 192.168.32.11: icmp_seq=5 ttl=64 time=1.33 ms
^C
--- Slave.local ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 13280ms
rtt min/avg/max/mdev = 1.334/2.378/3.295/0.825 ms
vagrant@Master:~$


From Slave
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh Slave
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 11:25:46 UTC 2024

  System load:  0.06              Processes:             103
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 11:25:46 UTC 2024

  System load:  0.06              Processes:             103
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 12%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.11


Expanded Security Maintenance for Infrastructure is not enabled.

18 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04


Last login: Thu Apr 18 10:52:10 2024 from 10.0.2.2
vagrant@Slave:~$ ping Master.local
PING Master.local (192.168.32.10) 56(84) bytes of data.
64 bytes from 192.168.32.10: icmp_seq=1 ttl=64 time=3.40 ms
64 bytes from 192.168.32.10: icmp_seq=2 ttl=64 time=1.04 ms
64 bytes from 192.168.32.10: icmp_seq=3 ttl=64 time=2.95 ms
64 bytes from 192.168.32.10: icmp_seq=4 ttl=64 time=0.917 ms
64 bytes from 192.168.32.10: icmp_seq=5 ttl=64 time=2.47 ms
^C
--- Master.local ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 13030ms
rtt min/avg/max/mdev = 0.917/2.161/3.407/1.008 ms
vagrant@Slave:~$




####### Step 2e: Creating SSHkey from Master and copying to Slave and then login to Slave from the Master node #######

********************* SSH from Master Node into Slave node ******* 
Connection to 127.0.0.1 closed.
PS C:\Users\Mrs Nte\vagrant\webservers> vagrant ssh Master
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 11:34:07 UTC 2024

  System load:  0.08              Processes:             97
  Usage of /:   3.4% of 38.70GB   Users logged in:       0
  Memory usage: 13%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.10


Expanded Security Maintenance for Infrastructure is not enabled.

15 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04


Last login: Thu Apr 18 11:23:11 2024 from 10.0.2.2
vagrant@Master:~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/vagrant/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/vagrant/.ssh/id_rsa.
Your public key has been saved in /home/vagrant/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:d2R7iScNLeaW2fOgPHnQtQwtN7iAk37inyskWJ709Y4 vagrant@Master
The key's randomart image is:
+---[RSA 2048]----+
|                 |
|          o  .o  |
|         + .*+.+.|
|       o. .*.@*oo|
|      = Soo.%.Xo |
|     . +.+o+ O + |
|        o.  B . .|
|         ..E.+   |
|          .+.    |
+----[SHA256]-----+
vagrant@Master:~$ ssh-copy-id -i vagrant@192.168.30.11
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
The authenticity of host '192.168.30.11 (192.168.30.11)' can't be established.
ECDSA key fingerprint is SHA256:aD8ReKXOSP8wZ86gXo22YbhKP6bpHTSKXY2CteUClbU.
Are you sure you want to continue connecting (yes/no)? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.11's password:
Permission denied, please try again.
vagrant@192.168.30.11's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'vagrant@192.168.30.11'"
and check to make sure that only the key(s) you wanted were added.

vagrant@Master:~$
vagrant@Master:~$ ssh vagrant@192.168.30.11
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 12:09:05 UTC 2024

  System load:  0.03              Processes:             100
  Usage of /:   3.4% of 38.70GB   Users logged in:       1
  Memory usage: 13%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.11


Expanded Security Maintenance for Infrastructure is not enabled.

18 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Thu Apr 18 11:38:32 2024 from 10.0.2.2
vagrant@Slave:~$

Note: We have successfuly login from  Master node into the Slave node



****** SSH from Slave node into Master node *******

Last login: Thu Apr 18 11:25:48 2024 from 10.0.2.2
vagrant@Slave:~$
vagrant@Slave:~$ sudo nano /etc/ssh/sshd_config
vagrant@Slave:~$ vagrant@Slave:~$
vagrant@Slave:~$ sudo systemctl restart sshd
vagrant@Slave:~$ sudo nano /etc/ssh/sshd_config
vagrant@Slave:~$ vagrasystemctl restart sshdc/ssh/sshd_config
vagrant@Slave:~$ ssh vagrant@192.168.32.10
The authenticity of host '192.168.30.10 (192.168.30.10)' can't be established.
ECDSA key fingerprint is SHA256:JD/NZYbG3SykRPSsvQHverOADfOjXonQlMpVZdtETLk.
Are you sure you want to continue connecting (yes/no)? no
Host key verification failed.
vagrant@Slave:~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/vagrant/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/vagrant/.ssh/id_rsa.
Your public key has been saved in /home/vagrant/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:+2Ek413BeG5jRx5mhHY5HXH3ZGgKDzs5aLSroGzSZeg vagrant@Slave
The key's randomart image is:
+---[RSA 2048]----+
|             ..*B|
|        . ooo.*o=|
|       . o.B++=..|
|        + =oo* . |
|   .   .S..o* o  |
|  . +  ..* + o   |
| + + . .o +      |
|. E   .  o .     |
| o        .      |
+----[SHA256]-----+
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.30.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
The authenticity of host '192.168.30.10 (192.168.30.10)' can't be established.
ECDSA key fingerprint is SHA256:JD/NZYbG3SykRPSsvQHverOADfOjXonQlMpVZdtETLk.
Are you sure you want to continue connecting (yes/no)? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.32.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.30.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh vagrant@192.168.30.10
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.30.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh vagrant@192.168.30.10
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.30.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ping Master.local
PING Master.local (192.168.30.10) 56(84) bytes of data.
64 bytes from 192.168.30.10: icmp_seq=1 ttl=64 time=4.02 ms
64 bytes from 192.168.30.10: icmp_seq=2 ttl=64 time=2.82 ms
64 bytes from 192.168.30.10: icmp_seq=3 ttl=64 time=2.63 ms
^C
--- Master.local ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 11027ms
rtt min/avg/max/mdev = 2.637/3.162/4.026/0.618 ms
vagrant@Slave:~$ ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 02:3b:7b:b7:3b:2d brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic enp0s3
       valid_lft 81830sec preferred_lft 81830sec
    inet6 fe80::3b:7bff:feb7:3b2d/64 scope link
       valid_lft forever preferred_lft forever
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:a7:1b:58 brd ff:ff:ff:ff:ff:ff
    inet 192.168.32.11/24 brd 192.168.32.255 scope global enp0s8
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:fea7:1b58/64 scope link
       valid_lft forever preferred_lft forever
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.30.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10: Permission denied (publickey).
vagrant@Slave:~$ ssh-copy-id -i vagrant@192.168.32.10
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/vagrant/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
vagrant@192.168.30.10's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'vagrant@192.168.30.10'"
and check to make sure that only the key(s) you wanted were added.

vagrant@Slave:~$ ssh vagrant@192.168.30.10
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 12:44:13 UTC 2024

  System load:  0.12              Processes:             105
  Usage of /:   3.4% of 38.70GB   Users logged in:       1
  Memory usage: 13%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.10


Expanded Security Maintenance for Infrastructure is not enabled.

15 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

102 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04


Last login: Thu Apr 18 11:34:09 2024 from 10.0.2.2
vagrant@Master:~$ exit
logout
Connection to 192.168.32.10 closed.
vagrant@Slave:~$ cll






######## Step 2f: Checking to confirm if Ansible has been installed based on the vagrant provisioning done in vagrant file ########
- using ansible --version

From Master Node...............
Last login: Thu Apr 18 12:44:15 2024 from 192.168.32.11
vagrant@Master:~$ ansible --version
ansible 2.5.1
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/home/vagrant/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.17 (default, Mar  8 2023, 18:40:28) [GCC 7.5.0] 


From Slave Node....................

vagrant@Master:~$
vagrant@Master:~$ ssh vagrant@192.168.32.11
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-212-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Apr 18 16:07:00 UTC 2024

  System load:  0.08              Processes:             96
  Usage of /:   3.8% of 38.70GB   Users logged in:       0
  Memory usage: 16%               IP address for enp0s3: 10.0.2.15
  Swap usage:   0%                IP address for enp0s8: 192.168.30.11


Expanded Security Maintenance for Infrastructure is not enabled.

18 updates can be applied immediately.
10 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

110 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04

Failed to connect to https://changelogs.ubuntu.com/meta-release-lts. Check your Internet connection or proxy settings


Last login: Thu Apr 18 12:32:32 2024 from 192.168.30.10
vagrant@Slave:~$
vagrant@Slave:~$ ansible --version
ansible 2.5.1
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/home/vagrant/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.17 (default, Mar  8 2023, 18:40:28) [GCC 7.5.0]
vagrant@Slave:~$



######### Step 3: Next Write the bash script to deploy LAMP. The script will be called lampexecute.sh #########

vagrant@Master:~$ cat lampexecute.sh
#!/usr/bin/bash

#Installation of LAMP Stack (Linux Apache,MySQL, & PHP)

#============== Install Linux Applications  ====================
Complete code can be found at lampexecute.sh file
#=================================================================

######### Step 4: Create ansible book to implement the bash script at slav node #########

---
- name: Deploy Lamp with Laravel Application
  hosts: all
  become: yes

  tasks:
  - name: copy the lamsetup script to slave server
    copy:
      src: /home/vagrant/lampexecute.sh
      dest: /home/vagrant
      mode: 0755

  - name: Execute the Bash script
    command: sudo sh /home/vagrant/lampexecute.sh

  - name: Add cronjob for the server uptime
    cron:
      name: "server_uptime"
      minute: "{{ 0 }}"
      hour: "{{ 0 }}"
      job: "/usr/bin/uptime >> /var/log/server_uptime.log"


########### Step 5: Running the Ansible playbook ##########
 
vagrant@Master:~/ansible_execute$ ls
run_lampexecute.yml  inventory

agrant@master:~/ansible_execute$
vagrant@master:~/ansible_execute$ ansible-playbook -i inventory run_lampexecute.yml --check

PLAY [Deployment of LAMP with Laravel Application] *********************************************************************

TASK [Gathering Facts] *************************************************************************************************
ok: [vagrant@192.168.30.11]

TASK [copy the lamp execution script to slave server] ******************************************************************
changed: [vagrant@192.168.30.11]

TASK [Execute the Bash Script] *****************************************************************************************
skipping: [vagrant@192.168.30.11]

TASK [Add cronjob for server uptime] ***********************************************************************************
changed: [vagrant@192.168.30.11]

PLAY RECAP *************************************************************************************************************
vagrant@192.168.30.11      : ok=3    changed=2    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0

vagrant@master:~/ansible_execute$



Step 6: Accessing the laravel application using http://192.168.30.11
The FINAL OUTPUT.......... 