#!/usr/bin/env fish
set FILE system.qcow2
set WORKING_HD working.qcow2
set INSTALL -cdrom ubuntu-20.04.1-desktop-amd64.iso
# set DISPLAY -sdl
set DISPLAY -vnc 127.0.0.1:2
set OPTIONS -accel tcg -smp cpus=2 -m 4096 -nic user,model=virtio
# DISPLAY=""

if test ! -e $FILE 
  # Create hd
  qemu-img create -f qcow2 $FILE 10G
  qemu-system-x86_64 $OPTIONS \
    -drive file=$FILE,media=disk,if=virtio \
    $INSTALL
  exit 0
end

if test -e $FILE
  if test ! -e $WORKING_HD
    qemu-img create -f qcow2 -F qcow2 $WORKING_HD -b $FILE
  end
end

echo "Start vnc if needed"
qemu-system-x86_64 $OPTIONS \
    -drive file=$WORKING_HD,media=disk,if=virtio \
    $DISPLAY $argv

