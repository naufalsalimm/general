### Delete History Command
``` bash
history -d <no-baris>
```
### Delete Change
``` bash
history -w
```
### Encode File
``` bash
base64 adam.csr
```
### Decode File 
``` bash
base64 -d adam.csr
```
### Reverse search history
`Ctrl + R`

### Force Resolution Domain
``` bash
curl https://example.com --resolve example.com:443:192.168.1.10
```
example.com → nama domain yang diminta.

:443 → port (biasanya 443 untuk HTTPS, 80 untuk HTTP, atau NodePort).

192.168.1.10 → alamat IP yang dipaksa untuk domain tersebut.
