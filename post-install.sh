sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt full-upgrade -y
sudo apt install rkhunter -y
echo Check For Rootkits Using RKHunter
sudo rkhunter -c -sk
curl -sSL https://raw.githubusercontent.com/nettitude/PoshC2/dev/Install.sh | sudo bash -s -- -b dev
sudo apt install leafpad -y
sudo apt install default-jdk -y
sudo apt install build-essential -y
sudo apt install windows-binaries -y 
sudo apt install openssh-server -y
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
sudo mkdir -p /opt/sysinternals/
sudo wget -O /opt/sysinternals/sysinternals.zip https://download.sysinternals.com/files/SysinternalsSuite.zip 
sudo mkdir -p /opt/privesc/linux
sudo wget -O /opt/privesc/linux/linpeas.sh https://github.com/carlospolop/PEASS-ng/releases/download/20220814/linpeas.sh
sudo mkdir -p /opt/privesc/windows
sudo wget -O /opt/privesc/windows/linpeas.bat https://github.com/carlospolop/PEASS-ng/releases/download/20220814/winPEAS.bat
sudo git clone https://github.com/paulkwalton/scripts.git /opt/scripts/
sudo git clone https://github.com/rebootuser/LinEnum.git /opt/privesc/linux/linenum
sudo git clone https://github.com/bitsadmin/wesng.git /opt/privesc/windows/exploit-suggester
sudo git clone https://github.com/nccgroup/ScoutSuite.git /opt/auditing/cloud/scoutsuite
sudo git clone https://github.com/Mebus/cupp.git /opt/passwords/cupp
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git /opt/privesc/windows/ghostpack
sudo git clone https://gchq.github.io/CyberChef/ /opt/gchq-cyberchef
sudo git clone https://github.com/ropnop/kerbrute /opt/adtools/kerbrute
sudo git clone https://github.com/sc0tfree/updog.git /opt/filehosting
sudo git clone https://github.com/Flangvik/SharpCollection.git /opt/sharpcollection/
sudo mkdir -p /adtools/sharphound
sudo wget -O /opt/adtools/sharphound/sharphound.ps1 https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.ps1
sudo wget -O /opt/adtools/sharphound.exe https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.exe
sudo wget -O /opt/adtools/pingcastle https://github.com/vletoux/pingcastle/releases/download/2.11.0.0/PingCastle_2.11.0.0.zip
sudo mkdir -p /opt/c2/sliver
sudo wget -O /opt/c2/sliver/sliver-server_linux https://github.com/BishopFox/sliver/releases/download/v1.5.22/sliver-server_linux
sudo wget -O /opt/c2/sliver/sliver-server_windows.exe https://github.com/BishopFox/sliver/releases/download/v1.5.22/sliver-server_windows.exe
sudo wget -O /opt/c2/sliver/sliver-client_windows.exe https://github.com/BishopFox/sliver/releases/download/v1.5.22/sliver-client_windows.exe
sudo wget -O /opt/c2/sliver/sliver-client_linux https://github.com/BishopFox/sliver/releases/download/v1.5.22/sliver-client_linux
sudo wget -O /opt/adtools/windapsearch https://github.com/ropnop/go-windapsearch/releases/download/v0.3.0/windapsearch-linux-amd64
sudo wget -O /opt/expressvpn https://www.expressvpn.works/clients/linux/expressvpn_3.30.0.2-1_amd64.deb
sudo git clone https://github.com/attackdebris/kerberos_enum_userlists.git /opt/wordlists/kerberos_enum_userlists
sudo apt-get install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y
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
sudo apt install bloodhound -y
sudo apt install responder -y
sudo apt install yersinia -y
sudo apt install spiderfoot -y
sudo apt install amass-common -y
sudo apt install psql -y
dpkg --add-architecture i386 && apt-get update -y && apt-get install wine32:i386 -y
sudo gem install evil-winrm
sudo apt-get update -y
sudo apt autoremove -y
sudo updatedb
sudo service postgresql start
echo Change Default SSH Keys
sudo mkdir /etc/ssh/old_keys
sudo mv /etc/ssh/ssh_host_* /etc/ssh/old_keys
sudo dpkg-reconfigure openssh-server
sudo macchanger -A eth0
echo "[i] Installing xfce4 & xrdp (this will take a while as well)"
apt-get install -y kali-desktop-xfce xorg xrdp
echo "[i] Configuring xrdp to listen to port 3390 (but not starting the service)"
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini
sudo systemctl enable xrdp --now
touch /opt/script-completed-pls-del-me.txt
sudo shutdown -r now
