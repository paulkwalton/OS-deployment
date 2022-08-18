# Kali-deployment

This is a Kali post deployment script to compliment the Kali Linux Official VMware image. It will install useful applications, harden the image and enable SSH/RDP remote access.

1. Download the Kali 64 Bit 7zip https://www.kali.org/get-kali/#kali-virtual-machines

2. Unzip the 7zip file and deploy to VMware Workstation

3. Launch the Kali image login as kali/kali, and change the Kali User Password.

4. git clone this repo and run post-install.sh

5. When the script completes, it will reboot the Kali Box to enable RDP Access (on Port 3390).

Note : If the Kali box doesn't obtain a DHCP address after initial reboot, restart again to resolve.


