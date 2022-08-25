Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
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
choco install rsat -y
choco install nmap -y
git clone https://github.com/PowerShellMafia/PowerSploit.git c:\windows\temp\powersploit
git clone https://github.com/dafthack/MailSniper.git c:\windows\temp\mailsniper
git clone https://github.com/dafthack/DomainPasswordSpray.git c:\windows\temp\domainpasswordspray
git clone https://github.com/Kevin-Robertson/Inveigh.git c:\windows\temp\inveigh
git clone https://github.com/adrecon/ADRecon.git c:\windows\temp\adrecon
git clone https://github.com/GhostPack/Rubeus.git c:\windows\temp\rubeus
git clone https://github.com/GhostPack/Seatbelt.git c:\windows\temp\seatbelt
git clone https://github.com/GhostPack/SharpUp.git c:\windows\temp\sharpup
git clone https://github.com/cube0x0/SharpMapExec.git c:\windows\temp\sharpmapexec
wsl --install
