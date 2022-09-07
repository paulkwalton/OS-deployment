# OS-deployment

Kali-Linux

This is a Kali post deployment script to compliment the Kali Linux Official VMware image. It will install useful applications, harden the image and enable SSH/RDP remote access.

1. Download the Kali 64 Bit 7zip https://www.kali.org/get-kali/#kali-virtual-machines

2. Unzip the 7zip file and deploy to VMware Workstation

3. Upgrade the Virtual Machine Hardware from 8 to 16.2

4. Launch the Kali image login as kali/kali, and change the Kali User Password.

5. git clone this repo and run post-install.sh

6. When the script completes, it will reboot the Kali Box to enable RDP Access (on Port 3390).

Note : If the Kali box doesn't obtain a DHCP address after initial reboot, restart again to resolve.

Windows 10

1. Download and install a Windows ISO in VMware Workstation.
2. Install VMware Tools and Fully patch the Windows Virtual Machine.
3. Create a VMware Template from this image for future deployments (Less than 8gb and install goes slow)
4. Install Git For Windows.
5. Disable Windows Defender Using Group Policy https://www.technewstoday.com/how-to-turn-off-windows-defender/
6. Restart Windows
7. git clone https://github.com/paulkwalton/OS-deployment.git
8. Set-ExecutionPolicy Unrestricted
9. ./post-install.ps1

