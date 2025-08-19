#!/bin/bash
set -e

echo "Cek ukuran logical volume saat ini"
sudo lvdisplay /dev/ubuntu-vg/ubuntu-lv

echo "Cek volume group ubuntu-vg"
sudo vgdisplay ubuntu-vg

echo "Resize logical volume root ke sisa free space di volume group"
sudo lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv

echo "Resize filesystem ext4 pada logical volume"
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv

echo "Cek kapasitas root setelah resize"
df -h /
