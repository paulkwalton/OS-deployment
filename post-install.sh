sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install rkhunter -y
echo Check For Rootkits Using RKHunter
sudo rkhunter -c
sudo apt install windows-binaries -y 
sudo wget https://download.sysinternals.com/files/SysinternalsSuite.zip /opt
sudo wget https://github.com/carlospolop/PEASS-ng/releases/download/20220814/linpeas.sh /opt/privesc/linux/linpeas.sh
sudo wget https://github.com/carlospolop/PEASS-ng/releases/download/20220814/winPEAS.bat /opt/privesc/windows/linpeas.bat
sudo git clone https://github.com/paulkwalton/scripts.git /opt/scripts/
sudo git clone https://github.com/rebootuser/LinEnum.git /opt/privesc/linux/linenum
sudo git clone https://github.com/bitsadmin/wesng.git /opt/privesc/windows/exploit-suggester
sudo git clone https://github.com/nccgroup/ScoutSuite.git /opt/auditing/cloud/scoutsuite
sudo git clone https://github.com/Mebus/cupp.git /opt/passwords/cupp
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git /opt/privesc/windows/ghostpack
sudo git clone https://gchq.github.io/CyberChef/ /opt/gchq-cyberchef
sudo git clone https://github.com/ropnop/kerbrute /opt/adtools
sudo apt install wpscan -y
sudo wpscan --update 
sudo apt install macchanger -y
sudo apt install gcc-mingw-w64 -y
sudo apt install python3-impacket -y
sudo apt install git -y
sudo apt install netcat-traditional -y
sudo apt install powershell  -y
sudo apt install shellter -y
sudo apt install netcat -y
sudo apt install tilix -y
sudo apt install iputils-ping -y
sudo apt install dirbuster -y
sudo apt install dirb -y
sudo apt install nano -y
sudo apt install nikto -y
sudo apt install net-tools -y
sudo apt install exploitdb -y
sudo apt install novnc -y
sudo apt install tcpdump -y
sudo apt install msfpc -y
sudo apt install smbclient -y
sudo apt install enum4linux -y
sudo apt install default-mysql-client -y
sudo gem install highline -y
sudo apt install snapd -y
sudo apt install prips -y
sudo apt install dirsearch -y
sudo apt install pip -y
sudo apt install rdesktop -y
sudo apt install seclists -y
sudo apt install dnsrecon -y
sudo apt install jython -y
sudo apt install sqlitebrowser -y
sudo apt install hashid -y
sudo apt install spray -y
sudo apt install poshc2 -y
sudo apt install bloodhound -y
sudo git clone https://github.com/sc0tfree/updog.git /opt
sudo gem install evil-winrm
sudo apt-get update -y
sudo apt autoremove
sudo updatedb
sudo service postgresql start
echo Change Default SSH Keys
sudo mkdir /etc/ssh/old_keys
sudo mv /etc/ssh/ssh_host_* /etc/ssh/old_keys
sudo dpkg-reconfigure openssh-server
sudo macchanger -A eth0
echo NOW CHANGE PASSWORDS
