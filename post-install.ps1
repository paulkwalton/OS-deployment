Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Install-Module PSWindowsUpdate
Get-WindowsUpdate
# Install Windows Update
Install-WindowsUpdate
# Install Bit Locker (Requires VMWare VBS enabled)
Install-WindowsFeature BitLocker -IncludeAllSubFeature -IncludeManagementTools
# Remove all the Windows Bloatware
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
choco install -y visualstudio2022community 
choco install -y tor-browser
choco install rsat -y
choco install zap -y
choco install python -y

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
git clone https://github.com/cube0x0/SharpMapExec.git c:\tools\sharpmapexec
git clone https://github.com/Flangvik/NetLoader.git c:\tools\netloader
git clone https://github.com/BloodHoundAD/AzureHound c:\tools\azurehound
git clone https://github.com/nyxgeek/o365recon.git c:\tools\office365recon
git clone https://github.com/S3cur3Th1sSh1t/WinPwn.git c:\tools\winpwn
git clone https://github.com/dafthack/MSOLSpray.git c:\tools\msolspray

Write-Output "Download Express VPN"
wget https://www.expressvpn.works/clients/windows/expressvpn_windows_10.30.0.0_release.exe -OutFile c:\tools\expressvpn_windows_10.30.0.0_release.exe
Write-Output "Download Ping Castle"
wget https://github.com/vletoux/pingcastle/releases/download/2.11.0.1/PingCastle_2.11.0.1.zip -OutFile c:\tools\PingCastle_2.11.0.1.zip
Write-Output "Download Shellter Project"
wget https://www.shellterproject.com/Downloads/Shellter/Latest/shellter.zip -OutFile c:\tools\shellter.zip
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


