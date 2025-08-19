# Delete History Command
``` bash
history -d <no-baris>
```
# Delete Change
``` bash
history -w
```
# Encode File
``` bash
base64 adam.csr
```
# Decode File 
``` bash
base64 -d adam.csr
```
# Resize Root LV
``` bash
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
```

# Reverse search history
`Ctrl + R`

# Force Resolution Domain
``` bash
curl https://example.com --resolve example.com:443:192.168.1.10
```
example.com → nama domain yang diminta.

:443 → port (biasanya 443 untuk HTTPS, 80 untuk HTTP).

192.168.1.10 → alamat IP yang dipaksa untuk domain tersebut.
