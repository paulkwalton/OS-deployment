Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install adobereader
choco install googlechrome
choco install firefox
choco install jre8
choco install notepadplusplus.install
choco install 7zip.install
choco install python
choco install sysinternals
choco install putty.install
choco install vscode
