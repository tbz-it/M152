#!/bin/bash
#
#	Installationsscript Modul 152 - Multimedia-Inhalte in Webauftritt integrieren

# Install apache, php, ftp, powershell, markdown to HTML
sudo apt update
sudo apt install -y apache2 php libapache2-mod-php vsftpd markdown
sudo snap install powershell --classic

# Introseite (= README dieses Repository)
bash -x /opt/lernmaas/helper/intro
