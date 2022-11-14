Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Install-Module PSWindowsUpdate
Write-Output "Check For Windows Updates"
Get-WindowsUpdate
# Install Windows Update
Write-Output "Installing Windows Updates"
Install-WindowsUpdate
# Remove all the Windows Bloatware
Write-Output "Install Windows Subsystem For Linux"
wsl --install
Write-Output "Remove Bloatware"
Get-AppxPackage * | Remove-AppxPackage
mkdir c:\tools
# Install Tools Via Choc
choco install bginfo -y
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
choco install -y tor-browser
choco install rsat -y
choco install zap -y
choco install python -y
choco install golang -y
choco install openoffice -y
choco install keepassx -y
choco install angryip -y
choco install neo4j-community -y

# Clone Tools From Github
Write-Output "Download & Install Spiderfoot"
git clone https://github.com/smicallef/spiderfoot.git c:\tools\spiderfoot
cd c:\tools\spiderfoot
pip install -r requirements.txt
Write-Output "Download Github Tooling"
git clone https://github.com/PowerShellMafia/PowerSploit.git c:\tools\powersploit
git clone https://github.com/dafthack/MailSniper.git c:\tools\mailsniper
git clone https://github.com/dafthack/DomainPasswordSpray.git c:\tools\domainpasswordspray
git clone https://github.com/Kevin-Robertson/Inveigh.git c:\tools\inveigh
git clone https://github.com/adrecon/ADRecon.git c:\tools\adrecon
git clone https://github.com/GhostPack/Rubeus.git c:\tools\rubeus
git clone https://github.com/GhostPack/Seatbelt.git c:\tools\seatbelt
git clone https://github.com/GhostPack/SharpUp.git c:\tools\sharpup
git clone https://github.com/GhostPack/Certify.git c:\tools\certify
git clone https://github.com/cube0x0/SharpMapExec.git c:\tools\sharpmapexec
git clone https://github.com/Flangvik/NetLoader.git c:\tools\netloader
git clone https://github.com/BloodHoundAD/AzureHound c:\tools\azurehound
git clone https://github.com/nyxgeek/o365recon.git c:\tools\office365recon
# To Execute WinPWN Import-Module .\WinPwn.ps1 Or iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/S3cur3Th1sSh1t/WinPwn/master/WinPwn.ps1')
git clone https://github.com/S3cur3Th1sSh1t/WinPwn.git c:\tools\winpwn
git clone https://github.com/dafthack/MSOLSpray.git c:\tools\msolspray
git clone https://github.com/offensive-security/exploitdb.git c:\tools\exploitdb-source
git clone https://github.com/offensive-security/exploitdb-bin-sploits.git c:\tools\exploitdb-bin
git clone https://github.com/danielbohannon/Invoke-Obfuscation.git c:\tools\invoke-obfuscation
git clone https://github.com/gentilkiwi/mimikatz.git c:\tools\mimikatz
git clone https://github.com/CCob/SweetPotato.git c:\tools\sweetpotato
git clone https://github.com/XenocodeRCE/neo-ConfuserEx.git c:\tools\neoconfuserex
git clone https://github.com/yck1509/ConfuserEx.git c:\tools\confuserex
git clone https://github.com/danielmiessler/SecLists.git c:\tools\seclists

Write-Output "Download Bloodhound"
wget https://github.com/BloodHoundAD/BloodHound/releases/download/4.2.0/BloodHound-win32-x64.zip -OutFile c:\tools\BloodHound-win32-x64.zip
Write-Output "Download Express VPN"
wget https://www.expressvpn.works/clients/windows/expressvpn_windows_10.30.0.0_release.exe -OutFile c:\tools\expressvpn_windows_10.30.0.0_release.exe
Write-Output "Download Starkiller"
wget https://github.com/BC-SECURITY/Starkiller/releases/download/v1.10.0/starkiller.Setup.1.10.0.exe -OutFile c:\tools\starkiller.Setup.1.10.0.exe
Write-Output "Download Chisel"
wget https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_windows_386.gz -OutFile c:\tools\chisel_1.7.7_windows_386.gz
Write-Output "Download Go Phish"
https://github.com/gophish/gophish/releases/download/v0.12.1/gophish-v0.12.1-windows-64bit.zip -OutFile c:\tools\gophish-v0.12.1-windows-64bit.zip
Write-Output "Download Net Reactor"
https://www.eziriz.com/download.php?download=dotnet_reactor_setup_6_9_0_0.exe -OutFile c:\tools\dotnet_reactor_setup_6_9_0_0.exe
Write-Output "Download Ping Castle"
wget https://github.com/vletoux/pingcastle/releases/download/2.11.0.1/PingCastle_2.11.0.1.zip -OutFile c:\tools\PingCastle_2.11.0.1.zip
Write-Output "Download PEStudio"
wget https://www.winitor.com/tools/pestudio/current/pestudio.zip -OutFile c:\tools\pestudio.zip
Write-Output "Download Badblood AD Population Tool"
git clone https://github.com/davidprowe/BadBlood.git c:\tools\badblood
Write-Output "Download Scripts"
git clone https://github.com/paulkwalton/scripts.git c:\tools\scripts
# Restart Windows & rename Windows
Write-Output "Rename & Reboot Windows"
Rename-Computer -NewName "WinTak"
Restart-Computer


