echo Change Password For Kali User
passwd
apt-get update -y && apt-get upgrade -y
apt install lynis -y
echo Run Lynis & Output Report
lynis audit system > ./lynis_log.txt
echo Output open ports to log file
netstat -tulpn > ./open_ports_log.txt
apt install rkhunter
echo Check For Rootkits Using RKHunter
rkhunter -c
apt install git -y
apt install netcat-traditional -y
apt install powershell  -y
apt install shellter -y
apt install netcat -y
apt install tilix -y
apt install iputils-ping -y
apt install dirbuster -y
apt install dirb -y
apt install nano -y
apt install nikto -y
apt install net-tools -y
apt install exploitdb -y
apt install novnc -y
apt install tcpdump -y
apt install msfpc -y
apt install smbclient -y
apt install enum4linux -y
apt install default-mysql-client -y
gem install highline -y
apt install snapd -y
apt install prips -y
apt install dirsearch -y
apt install pip -y
apt install rdesktop -y
apt install seclists -y
apt install dnsrecon -y
apt install jython -y
apt install sqlitebrowser -y
apt install hashid -y
apt install spray -y
apt install poshc2 -y
apt install bloodhound
git clone https://github.com/sc0tfree/updog.git /opt
gem install evil-winrm
apt-get update -y
apt autoremove
updatedb
service postgresql start
