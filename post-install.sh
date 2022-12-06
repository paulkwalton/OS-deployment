# Update Kali before installing any tools
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt full-upgrade -y
# Check for rootkits inside the Kali Build
sudo apt install rkhunter -y
echo Check For Rootkits Using RKHunter
sudo rkhunter -c -sk
sudo apt install leafpad -y
sudo apt install default-jdk -y
sudo apt install build-essential -y
sudo apt install windows-binaries -y 
sudo apt install openssh-server -y
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
# Download useful binaries
sudo mkdir -p /opt/sysinternals/
sudo wget -O /opt/sysinternals/sysinternals.zip https://download.sysinternals.com/files/SysinternalsSuite.zip 
sudo mkdir -p /opt/privesc/linux
sudo wget -O /opt/privesc/linux/linpeas.sh https://github.com/carlospolop/PEASS-ng/releases/download/20220814/linpeas.sh
sudo mkdir -p /opt/privesc/windows
sudo wget -O /opt/privesc/windows/linpeas.bat https://github.com/carlospolop/PEASS-ng/releases/download/20220814/winPEAS.bat
# Start cloning repo's into /opt
sudo git clone https://github.com/BC-SECURITY/Empire-Bypasses.git /opt/Empire-Bypasses.git
sudo git clone --recursive https://github.com/BC-SECURITY/Empire-Sponsors.git /opt/Empire-Sponsors.git
sudo git clone https://github.com/Ridter/cve-2020-0688.git /opt/exploits/cve-2020-0688
sudo git clone https://github.com/paulkwalton/scripts.git /opt/scripts/
sudo git clone https://github.com/rebootuser/LinEnum.git /opt/privesc/linux/linenum
sudo git clone https://github.com/bitsadmin/wesng.git /opt/privesc/windows/exploit-suggester
sudo git clone https://github.com/nccgroup/ScoutSuite.git /opt/auditing/cloud/scoutsuite
sudo git clone https://github.com/Mebus/cupp.git /opt/passwords/cupp
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git /opt/privesc/windows/ghostpack
sudo git clone https://gchq.github.io/CyberChef/ /opt/gchq-cyberchef
sudo git clone https://github.com/ropnop/kerbrute /opt/adtools/kerbrute
sudo git clone https://github.com/sc0tfree/updog.git /opt/filehosting
sudo git clone https://github.com/Flangvik/SharpCollection.git /opt/sharpcollection
sudo git clone https://github.com/phra/PEzor.git /opt/PEzor
sudo git clone https://github.com/FortyNorthSecurity/RandomScripts.git /opt/shellcode-formatter
sudo git clone https://github.com/hashcat/kwprocessor.git /opt/kwprocessor
sudo git clone https://github.com/leoloobeek/LAPSToolkit.git /opt/LAPSToolkit
sudo git clone https://github.com/dirkjanm/PrivExchange.git /opt/PrivExchange

# Install KWprocessor used for creating keyboard walk passwords
cd /opt/kwprocessor/
sudo make
./kwp -z basechars/full.base keymaps/en-us.keymap routes/2-to-16-max-3-direction-changes.route > /opt/keyboard-walk-passwords.txt
sudo mkdir -p /adtools/sharphound
sudo wget -O /opt/adtools/sharphound/sharphound.ps1 https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.ps1
sudo wget -O /opt/adtools/sharphound.exe https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.exe
sudo wget -O /opt/adtools/pingcastle https://github.com/vletoux/pingcastle/releases/download/2.11.0.1/PingCastle_2.11.0.1.zip
sudo mkdir -p /opt/c2/sliver
sudo wget -O /opt/c2/sliver/sliver-server_linux https://github.com/BishopFox/sliver/releases/download/v1.5.31/sliver-server_linux
sudo wget -O /opt/c2/sliver/sliver-server_windows.exe https://github.com/BishopFox/sliver/releases/download/v1.5.31/sliver-server_windows.exe
sudo wget -O /opt/c2/sliver/sliver-client_windows.exe https://github.com/BishopFox/sliver/releases/download/v1.5.31/sliver-client_windows.exe
sudo wget -O /opt/c2/sliver/sliver-client_linux https://github.com/BishopFox/sliver/releases/download/v1.5.31/sliver-client_linux
sudo wget -O /opt/adtools/windapsearch https://github.com/ropnop/go-windapsearch/releases/download/v0.3.0/windapsearch-linux-amd64
sudo wget -O /opt/expressvpn https://www.expressvpn.works/clients/linux/expressvpn_3.30.0.2-1_amd64.deb
sudo wget -O /opt/starkiller https://github.com/BC-SECURITY/Starkiller/releases/download/v1.10.0/starkiller-1.10.0.AppImage
sudo wget -O /opt/chisel https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_linux_amd64.gz

sudo wget -O /opt/ruler-linux64 https://github.com/sensepost/ruler/releases/download/2.4.1/ruler-linux64
sudo mkdir -p /opt/gophish/
sudo wget -O /opt/gophish/gophish-v0.12.1-linux-64bit.zip https://github.com/gophish/gophish/releases/download/v0.12.1/gophish-v0.12.1-linux-64bit.zip
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
sudo apt install sqlmap -y
sudo apt install gobuster -y
sudo apt install iputils-ping -y
sudo apt install dirbuster -y
sudo apt install dirb -y
sudo apt install nano -y
sudo apt install nikto -y
sudo apt install sublist3r -y
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
sudo apt install neo4j -y
sudo pip install mitm6
sudo pip install exrex
apt install golang-go -y
go mod vendor

# This section generates a large list of realworld passwords for brute force and password spraying.

echo "ENTER FULL COMPANY NAME FOR GENERATING PASSWORD SPRAYS:>"
read companyname
echo "ENTER SHORT COMPANY NAME FOR GENERATING PASSWORD SPRAYS:>"
read shortcompanyname
echo $companyname"2022" > /opt/custom-passwords.txt
echo $companyname"2021" >> /opt/custom-passwords.txt
echo $companyname"2020" >> /opt/custom-passwords.txt
echo $companyname"2019" >> /opt/custom-passwords.txt

echo $companyname"123" >> /opt/custom-passwords.txt
echo $companyname"1234" >> /opt/custom-passwords.txt
echo $companyname"12345" >> /opt/custom-passwords.txt

echo $companyname"@2022" >> /opt/custom-passwords.txt
echo $companyname"@2021" >> /opt/custom-passwords.txt
echo $companyname"@2020" >> /opt/custom-passwords.txt
echo $companyname"@2019" >> /opt/custom-passwords.txt

echo $companyname"2022!" >> /opt/custom-passwords.txt
echo $companyname"2021!" >> /opt/custom-passwords.txt
echo $companyname"2020!" >> /opt/custom-passwords.txt
echo $companyname"2019!" >> /opt/custom-passwords.txt

echo $companyname"01" >> /opt/custom-passwords.txt
echo $companyname"@01" >> /opt/custom-passwords.txt
echo $companyname"01!" >> /opt/custom-passwords.txt

echo $shortcompanyname"2022" >> /opt/custom-passwords.txt
echo $shortcompanyname"2021" >> /opt/custom-passwords.txt
echo $shortcompanyname"2020" >> /opt/custom-passwords.txt
echo $shortcompanyname"2019" >> /opt/custom-passwords.txt

echo $shortcompanyname"@2022" >> /opt/custom-passwords.txt
echo $shortcompanyname"@2021" >> /opt/custom-passwords.txt
echo $shortcompanyname"@2020" >> /opt/custom-passwords.txt
echo $shortcompanyname"@2019" >> /opt/custom-passwords.txt

echo $shortcompanyname"2022!" >> /opt/custom-passwords.txt
echo $shortcompanyname"2021!" >> /opt/custom-passwords.txt
echo $shortcompanyname"2020!" >> /opt/custom-passwords.txt
echo $shortcompanyname"2019!" >> /opt/custom-passwords.txt

echo $shortcompanyname"01" >> /opt/custom-passwords.txt
echo $shortcompanyname"@01" >> /opt/custom-passwords.txt
echo $shortcompanyname"01!" >> /opt/custom-passwords.txt

echo $shortcompanyname"123" >> /opt/custom-passwords.txt
echo $shortcompanyname"1234" >> /opt/custom-passwords.txt
echo $shortcompanyname"12345" >> /opt/custom-passwords.txt


sudo exrex "((W|w)inter|(S|s)ummer|(F|f)all|(A|a)utumn|(S|s)pring)20(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)inter|(S|s)ummer|(F|f)all|(A|a)utumn|(S|s)pring)(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)inter|(S|s)ummer|(F|f)all|(A|a)utumn|(S|s)pring)(@1|@12|@123|@1234|@12345|@123456|@1234567)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)inter|(S|s)ummer|(F|f)all|(A|a)utumn|(S|s)pring)(1|2|3|4|5|6|7|8|9|0)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)inter|(S|s)ummer|(F|f)all|(A|a)utumn|(S|s)pring)(12|123|1234|12345|123456|1234567|12345678|123456789|1234567890)" >> /opt/custom-passwords.txt

sudo exrex "(1|12|123|1234|12345|123456|1234567|12345678|123456789|1234567890|123abcdef)" >> /opt/custom-passwords.txt

sudo exrex "((M|m)onday|(T|t)uesday|(W|w)ednesday|(T|t)hursday|(F|f)riday)20(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((M|m)onday|(T|t)uesday|(W|w)ednesday|(T|t)hursday|(F|f)riday)(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((M|m)onday|(T|t)uesday|(W|w)ednesday|(T|t)hursday|(F|f)riday)(@1|@12|@123|@1234|@12345|@123456|@1234567)" >> /opt/custom-passwords.txt
sudo exrex "((M|m)onday|(T|t)uesday|(W|w)ednesday|(T|t)hursday|(F|f)riday)(1|2|3|4|5|6|7|8|9|0)" >> /opt/custom-passwords.txt
sudo exrex "((M|m)onday|(T|t)uesday|(W|w)ednesday|(T|t)hursday|(F|f)riday)(1|12|123|1234|12345|123456|1234567|12345678|123456789|1234567890)" >> /opt/custom-passwords.txt

sudo exrex "((W|w)elcome)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome)(2012|2013|2014|2015|2016|2017|2018|2019|2022)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome)(@2012|@2013|@2014|@2015|@2016|@2017|@2018|@2019|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome@)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome@)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome@)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome-)(121|221|321|421|521|621|721|821|921|1021|1121|1221|1321|1421|1521|1621|1721|1821|1921|2021|2121|2221|232|2421|2521|2621|2721|2821|2921|3021|3121)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome-)(122|222|322|422|522|622|722|822|922|1022|1122|1222|1322|1422|1522|1622|1722|1822|1922|2022|2122|2222|2322|2422|2522|2622|2722|2822|2922|3022|3122)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome)(121|221|321|421|521|621|721|821|921|1021|1121|1221|1321|1421|1521|1621|1721|1821|1921|2021|2121|2221|232|2421|2521|2621|2721|2821|2921|3021|3121)" >> /opt/custom-passwords.txt
sudo exrex "((W|w)elcome)(122|222|322|422|522|622|722|822|922|1022|1122|1222|1322|1422|1522|1622|1722|1822|1922|2022|2122|2222|2322|2422|2522|2622|2722|2822|2922|3022|3122)" >> /opt/custom-passwords.txt

sudo exrex "((A|a)dmin)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin)(2012|2013|2014|2015|2016|2017|2018|2019|2022)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin)(@2012|@2013|@2014|@2015|@2016|@2017|@2018|@2019|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin@)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin@)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dmin@)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt

sudo exrex "((A|a)dministrator)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator)(2012|2013|2014|2015|2016|2017|2018|2019|2022)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator)(@2012|@2013|@2014|@2015|@2016|@2017|@2018|@2019|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator@)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator@)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)dministrator@)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt

sudo exrex "((L|l)ondon)(1|2|3|4|5|6|7|8|9)" >> /opt/custom-passwords.txt
sudo exrex "((L|l)ondon)(2012|2013|2014|2015|2016|2017|2018|2019|2022)" >> /opt/custom-passwords.txt
sudo exrex "((L|l)ondon)(@2012|@2013|@2014|@2015|@2016|@2017|@2018|@2019|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((L|l)ondon)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((L|l)ondon)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt

sudo exrex "((A|a)bc)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)bcdef)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt

sudo exrex "((A|a)tos|(W|w)ipro|(I|i)nfosys|(D|d)xc|(T|t)cs|(C|c)apgemini)(2016|2017|2018|2019|2020|2021|2022)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)tos|(W|w)ipro|(I|i)nfosys|(D|d)xc|(T|t)cs|(C|c)apgemini)(@2016|@2017|@2018|@2019|@2020|@2021|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)tos|(W|w)ipro|(I|i)nfosys|(D|d)xc|(T|t)cs|(C|c)apgemini)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)tos|(W|w)ipro|(I|i)nfosys|(D|d)xc|(T|t)cs|(C|c)apgemini)(@1|@12|@123|@1234|@12345|@123456|@1234567|@12345678|@123456789)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)tos|(W|w)ipro|(I|i)nfosys|(D|d)xc|(T|t)cs|(C|c)apgemini)(@1|@2|@3|@4|@5|@6|@7|@8|@9)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)tos|(W|w)ipro|(I|i)nfosys|(D|d)xc|(T|t)cs|(C|c)apgemini)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt

sudo exrex "((P|p)assword)(1|2|3|4|5|6|7|8|9|0)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)@ssword)(1|2|3|4|5|6|7|8|9|0)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)assword)(1|12|123|1234|12345|123456|1234567|12345678|123456789|1234567890)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)@ssword)(1|12|123|1234|12345|123456|1234567|12345678|123456789|1234567890)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)assword)(01|02|03|04|05|06|07|08|09|00)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)@ssword)(01|02|03|04|05|06|07|08|09|00)" >> /opt/custom-passwords.txt

sudo exrex "((P|p)assw0rd)(1|2|3|4|5|6|7|8|9|0)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)@ssw0rd)(1|2|3|4|5|6|7|8|9|0)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)assw0rd)(1|12|123|1234|12345|123456|1234567|12345678|123456789|1234567890)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)@ssw0rd)(1|12|123|1234|12345|123456|1234567|12345678|123456789|1234567890)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)assw0rd)(01|02|03|04|05|06|07|08|09|00)" >> /opt/custom-passwords.txt
sudo exrex "((P|p)@ssw0rd)(01|02|03|04|05|06|07|08|09|00)" >> /opt/custom-passwords.txt

sudo echo '!'Passw0rd1@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd2@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd3@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd4@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd5@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd6@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd7@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd8@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd9@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd0@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd12@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd123@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd1234@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd12345@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd123456@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd1234567@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd12345678@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd123456789@ >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd1234567890@ >> /opt/custom-passwords.txt

sudo echo '!'Passw0rd1'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd2'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd3'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd4'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd5'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd6'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd7'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd8'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd9'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd0'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd12'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd123'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd1234'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd12345'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd123456'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd1234567'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd12345678'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd123456789'!' >> /opt/custom-passwords.txt
sudo echo '!'Passw0rd1234567890'!' >> /opt/custom-passwords.txt

sudo exrex "((A|a)rsenal|(L|l)iverpool|(C|c)helsea|(E|e)verton|(A|a)stonvilla|(W|w)atford|(B|b)urnley|(M|m)anutd|(M|m)anchesterunited|(L|l)eedsunited|(M|m)anchestercity|(B|b)rentford)20(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)rsenal|(L|l)iverpool|(C|c)helsea|(E|e)verton|(A|a)stonvilla|(W|w)atford|(B|b)urnley|(M|m)anutd|(M|m)anchesterunited|(L|l)eedsunited|(M|m)anchestercity|(B|b)rentford)(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)rsenal|(L|l)iverpool|(C|c)helsea|(E|e)verton|(A|a)stonvilla|(W|w)atford|(B|b)urnley|(M|m)anutd|(M|m)anchesterunited|(L|l)eedsunited|(M|m)anchestercity|(B|b)rentford)@20(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)rsenal|(L|l)iverpool|(C|c)helsea|(E|e)verton|(A|a)stonvilla|(W|w)atford|(B|b)urnley|(M|m)anutd|(M|m)anchesterunited|(L|l)eedsunited|(M|m)anchestercity|(B|b)rentford)(16|17|18|19|20|21|22)" >> /opt/custom-passwords.txt
sudo exrex "((A|a)rsenal|(L|l)iverpool|(C|c)helsea|(E|e)verton|(A|a)stonvilla|(W|w)atford|(B|b)urnley|(M|m)anutd|(M|m)anchesterunited|(L|l)eedsunited|(M|m)anchestercity|(B|b)rentford)(1|2|3|4|5|6|7)|8|9|0" >> /opt/custom-passwords.txt
sudo exrex "((A|a)rsenal|(L|l)iverpool|(C|c)helsea|(E|e)verton|(A|a)stonvilla|(W|w)atford|(B|b)urnley|(M|m)anutd|(M|m)anchesterunited|(L|l)eedsunited|(M|m)anchestercity|(B|b)rentford)(12|123|1234|12345|123456|1234567|12345678)|123456789|1234567890" >> /opt/custom-passwords.txt

sudo exrex "((C|c)hristmas|(R|r)amadan|(H|h)alloween|(N|n)ewyear|(T|h)hanksgiving|(D|d)iwali)(2016|2017|2018|2019|2020|2021|2022)" >> /opt/custom-passwords.txt
sudo exrex "((C|c)hristmas|(R|r)amadan|(H|h)alloween|(N|n)ewyear|(T|h)hanksgiving|(D|d)iwali)(@2016|@2017|@2018|@2019|@2020|@2021|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((C|c)hristmas|(R|r)amadan|(H|h)alloween|(N|n)ewyear|(T|h)hanksgiving|(D|d)iwali)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((C|c)hristmas|(R|r)amadan|(H|h)alloween|(N|n)ewyear|(T|h)hanksgiving|(D|d)iwali)(@1|@12|@123|@1234|@12345|@123456|@1234567|@12345678|@123456789)" >> /opt/custom-passwords.txt
sudo exrex "((C|c)hristmas|(R|r)amadan|(H|h)alloween|(N|n)ewyear|(T|h)hanksgiving|(D|d)iwali)(@1|@2|@3|@4|@5|@6|@7|@8|@9)" >> /opt/custom-passwords.txt
sudo exrex "((C|c)hristmas|(R|r)amadan|(H|h)alloween|(N|n)ewyear|(T|h)hanksgiving|(D|d)iwali)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt

sudo exrex "((B|b)irmingham|(C|c)oventry|(G|g)lasgow|(L|l)iverpool|(B|b)ristol|(M|m)anchester)(2016|2017|2018|2019|2020|2021|2022)" >> /opt/custom-passwords.txt
sudo exrex "((B|b)irmingham|(C|c)oventry|(G|g)lasgow|(L|l)iverpool|(B|b)ristol|(M|m)anchester)(@2016|@2017|@2018|@2019|@2020|@2021|@2022)" >> /opt/custom-passwords.txt
sudo exrex "((B|b)irmingham|(C|c)oventry|(G|g)lasgow|(L|l)iverpool|(B|b)ristol|(M|m)anchester)(1|12|123|1234|12345|123456|1234567|12345678|123456789)" >> /opt/custom-passwords.txt
sudo exrex "((B|b)irmingham|(C|c)oventry|(G|g)lasgow|(L|l)iverpool|(B|b)ristol|(M|m)anchester)(@1|@12|@123|@1234|@12345|@123456|@1234567|@12345678|@123456789)" >> /opt/custom-passwords.txt
sudo exrex "((B|b)irmingham|(C|c)oventry|(G|g)lasgow|(L|l)iverpool|(B|b)ristol|(M|m)anchester)(@1|@2|@3|@4|@5|@6|@7|@8|@9)" >> /opt/custom-passwords.txt
sudo exrex "((B|b)irmingham|(C|c)oventry|(G|g)lasgow|(L|l)iverpool|(B|b)ristol|(M|m)anchester)(01|02|03|04|05|06|07|08|09)" >> /opt/custom-passwords.txt

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
# Write a file which confirms the build script has reached the end, and not fell over.
touch /opt/script-completed-pls-del-me.txt
sudo a2enmod rewrite
sudo a2enmod proxy 
sudo a2enmod proxy_http 
sudo a2enmod proxy_balancer 
sudo a2enmod lbmethod_byrequests
# Restart Kali, and good to go.
sudo shutdown -r now
