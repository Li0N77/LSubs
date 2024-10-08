#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root. Use sudo."
    exit 1
fi

echo "Installing command-line tools..."

if ! command -v amass &> /dev/null
then
    echo "Amass not found, installing..."
    wget https://github.com/OWASP/Amass/releases/download/v3.20.1/amass_3.20.1_linux_amd64.deb
    dpkg -i amass_3.20.1_linux_amd64.deb
    rm amass_3.20.1_linux_amd64.deb
else
    echo "Amass is already installed."
fi

if ! command -v sublist3r &> /dev/null
then
    echo "Sublist3r not found, installing..."
    git clone https://github.com/aboul3la/Sublist3r.git
    cd Sublist3r
    pip install -r requirements.txt
    cd ..
    rm -rf Sublist3r
else
    echo "Sublist3r is already installed."
fi


echo "lsubs [-d <domain>] [--api_key_virustotal <key>] [--api_key_securitytrails <key>] [--api_key_censys <key>] [--api_key_shodan <key>] [--api <api arguments>]"
