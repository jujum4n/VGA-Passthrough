sudo apt-get install gufw
sudo apt-get update
lspci | grep VGA
chmod u+x setup.sh 
./setup.sh
sudo nano /etc/default/grub 
sudo update-grub
dmesg | grep AMD-Vi
sudo add-apt-repository ppa:jacob/virtualisation
sudo apt-get update
sudo apt-get install qemu-kvm seabios qemu-utils hugepages bridge-utils
sudo nano /etc/default/grub 
sudo update-grub
sudo -i
lspci -nn | grep 2a:00.
lspci | grep VGA
cat ~/.bash_history
hugeadm --explain
sudo hugeadm --explain
sudo -i
sudo apt-get install ovmf
for a in /sys/kernel/iommu_groups/*; do find $a -type l; done
lspci -nn 2a:00.
lspci -nn | grep 2a:00.
lspci -nn | grep 29:00.
for a in /sys/kernel/iommu_groups/*; do find $a -type l; done
lsusb
sudo panel
panel
lspci -nn | grep 2a:00.
hugeadm --explain
sudo hugeadm --explain
sudo -i
lsmod | grep kvm
lsmod | grep vfio
qemu-system-x86_64 --version
dmesg | grep vfio
dmesg | grep VFIO
touch win10.sh
nano win10.sh 
ls /Downloads
ls Downloads/
nano win10.sh 
sudo chmod +x win10.sh 
nano win10.sh 
sudo ./win10.sh 
sudo -i
ping google.com
lspci -nn | grep 2a.00.
/usr/bin/python3 ~/PycharmProjects/pyroject/main.py 
sudo -i
lspci -nn | grep 2a:00.
lspci | grep VGA
sudo ./win10.sh
cat /etc/default/grub
sudo fallocate -l 420G /media/time/VM/win.img
sudo ./win10.sh
mv bupwin10.sh installer_win10.sh
sudo rm -rf /media/time/VM/win.img
nano win10.sh
sudo ./win10.sh