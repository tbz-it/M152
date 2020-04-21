# M152 Multimedia-Inhalte in Webauftritt integrieren

Umgebung für die Integration von Multimedia auf einem Webserver. 
Die Skripts sind abgestimmt auf die [lernmaas](https://github.com/mc-b/lernmaas) Umgebung.

Verwendete Produkte
-------------------

* [Apache Web Server](https://httpd.apache.org/)
* [PHP](https://www.php.net/)
* [FTP Server](https://wiki.ubuntuusers.de/vsftpd/)
* [Bash](https://wiki.ubuntuusers.de/Bash/)
* [PowerShell on Linux](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-6)

Informationen zum Modul
-----------------------

Die Informationen zum Modul sind im BSCW und auf dem Installierten Server unter [/M152](/M152) zu finden.

Zugriff auf den Server
----------------------

### User / Password

Der User ist `ubuntu`, dass Password steht in der Datei [/M152/passwd](/M152/passwd).

Einloggen mittels

    ssh ubuntu@[IP Adresse]
    
### SSH

Auf der Server kann mittels [ssh](https://wiki.ubuntuusers.de/SSH/) zugegriffen werden.    

Der private SSH Key ist auf dem Installierten Server unter [/M152/id_rsa](/M152/id_rsa) zu finden. Downloaden und dann wie folgt auf den Server einloggen:

    ssh -i id_rsa ubuntu@[IP Adresse]
    
**Hinweis**: Windows User verwenden [Putty](https://www.putty.org/) und den [Putty Key /M152/id_rsa.ppk](/M152/id_rsa.ppk).    
