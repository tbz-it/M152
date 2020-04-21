#!/bin/bash
#
#	Installationsscript Modul 152 - Multimedia-Inhalte in Webauftritt integrieren

# Install apache, php, ftp, powershell, markdown to HTML
sudo apt update
sudo apt install -y apache2 php libapache2-mod-php vsftpd markdown
sudo snap install powershell --classic

# Repository unter Apache verfuegbar machen inkl. README.md als Anleitung
sudo apt install -y putty-tools
sudo ln -s $HOME/M122 /var/www/html/M122
cp $HOME/data/.ssh/id_rsa $HOME/M122/
cp $HOME/data/.ssh/passwd $HOME/M122/
puttygen $HOME/.ssh/id_rsa -o $HOME/M122/id_rsa.ppk
chmod 644 $HOME/M122/id_rsa $HOME/M122/id_rsa.ppk

cat <<%EOF% | sudo tee /var/www/html/index.html
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>$(hostname) - Automatisieren mit Skripten</title>
<link rel="shortcut icon" href="https://tbz.ch/wp-content/themes/tbz/favicons/favicon.ico">
<meta charset="utf-8" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these 
        
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
    integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
<div class="navbar-form navbar-left">
$(markdown $HOME/M122/README.md)
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"
    type="text/javascript"></script>

</div>
</body>
</html>
%EOF%
