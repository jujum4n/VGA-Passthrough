#!/bin/bash

vmname="windows7vm"

if ps -A | grep -q $vmname; then
   echo "$vmname is already running." &
   exit 1

else

# use pulseaudio
#export QEMU_AUDIO_DRV=pa
#export QEMU_PA_SAMPLES=8192
#export QEMU_AUDIO_TIMER_PERIOD=99
#export QEMU_PA_SERVER=/run/user/1000/pulse/native

cp /usr/share/OVMF/OVMF_VARS.fd /tmp/my_vars.fd

qemu-system-x86_64 \
  -name $vmname,process=$vmname \
  -machine type=pc,accel=kvm \
  -cpu host,kvm=off \
  -smp 12,sockets=1,cores=6,threads=2 \
  -m 32G \
  -mem-path /run/hugepages/kvm \
  -mem-prealloc \
  -balloon none \
  -rtc clock=host,base=localtime \
  -vga none \
  -nographic \
  -serial none \
  -parallel none \
  -soundhw hda \
  -usb -usbdevice host:1af3:0001 -usbdevice host:24f0:0140 -usbdevice host:0d8c:0014 \
  -device vfio-pci,host=2a:00.0,multifunction=on \
  -device vfio-pci,host=2a:00.1 \
  -drive if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_CODE.fd \
  -drive if=pflash,format=raw,file=/tmp/my_vars.fd \
  -boot order=dc \
  -drive id=disk0,if=virtio,cache=none,format=raw,file=/media/time/VM/win7.img \
  -drive file=/home/time/ISO/win7.iso,index=3,media=cdrom \
  -drive file=/home/time/Downloads/virtio-win-0.1.141.iso,media=cdrom \
  -netdev type=tap,id=net0,ifname=tap0,vhost=on \
  -device virtio-net-pci,netdev=net0,mac=00:16:3e:00:01:01

   exit 0
fi
