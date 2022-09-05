Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
mkdir c:\tools
choco install adobereader -y
choco install googlechrome -y
choco install firefox -y
choco install notepadplusplus.install -y
choco install 7zip.install -y
choco install sysinternals -y
choco install putty.install -y
choco install vscode -y
choco install filezilla -y
choco install adexplorer -y
choco install nmap -y
choco install burp-suite-pro-edition -y
choco install wireshark -y
choco install winscp -y
choco install vnc-viewer -y
choco install -y keepass.install
choco install -y postman
choco install -y sql-server-management-studio
choco install -y visualstudio2022community 
choco install -y tor-browser


git clone https://github.com/PowerShellMafia/PowerSploit.git c:\tools\powersploit
git clone https://github.com/dafthack/MailSniper.git c:\tools\mailsniper
git clone https://github.com/dafthack/DomainPasswordSpray.git c:\tools\domainpasswordspray
git clone https://github.com/Kevin-Robertson/Inveigh.git c:\tools\inveigh
git clone https://github.com/adrecon/ADRecon.git c:\tools\adrecon
git clone https://github.com/GhostPack/Rubeus.git c:\tools\rubeus
git clone https://github.com/GhostPack/Seatbelt.git c:\tools\seatbelt
git clone https://github.com/GhostPack/SharpUp.git c:\tools\sharpup
git clone https://github.com/cube0x0/SharpMapExec.git c:\tools\sharpmapexec
git clone https://github.com/Flangvik/NetLoader.git c:\tools\netloader
wget https://windows.metasploit.com/metasploitframework-latest.msi -OutFile c:\tools\metasploit.msi
wget https://www.expressvpn.works/clients/windows/expressvpn_windows_10.30.0.0_release.exe -OutFile c:\tools\expressvpn_windows_10.30.0.0_release.exe
wget https://download3.vmware.com/software/CART23FQ2_WIN_2206/VMware-Horizon-Client-2206-8.6.0-20094380.exe -OutFile c:\tools\VMware-Horizon-Client-2206-8.6.0-20094380.exe
git clone https://github.com/davidprowe/BadBlood.git c:\tools\badblood
c:\tools\metasploit.msi /q /log $LogLocation INSTALLLOCATION="c:\tools\metasploit"
wsl --install
