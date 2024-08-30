# LSubs
### SubDomain enumeration Tool
A powerful and extensible Python-based subdomain enumeration tool designed to help security researchers and penetration testers identify subdomains associated with a target domain. The tool leverages multiple techniques and integrates with various third-party services to discover as many subdomains as possible.

## Features

  - Multiple Enumeration Techniques: Utilizes several methods for subdomain discovery, including DNS brute-forcing, public search engines, certificate transparency logs, and more.
  
  - No API Key Requirement: Most modules work without API keys, making the tool accessible to everyone. However, it does support SecurityTrails API for additional data.

# Installation
If you are on a Linux or macOS system with Bash available, you can use the provided install.sh script to automate the installation process.

Clone the Repository:

    git clone https://github.com/Li0N77/LSubs.git
    cd LSubs
  
  Run the Installation Scripts :
    
    chmod +x install.sh
    chmod +x install-tools.sh
    ./install.sh
    sudo ./install-tools.sh

This script will:

  - Install required Python packages.
  - Install Amass, Sublist3r, and if they are not already installed on your system.
  - Install lsubs in ~/.local/bin/  to run it from any directory

## Configuration

To use APIs from services like SecurityTrails, Censys, and Shodan, you need to provide your API keys in the tool .

      lsubs -A --api_key_securitytrails yourapi --api_key_censys yourapi --api_key_shodan yourapi 
      
you can use one of them 

## Usage

Run the tool by specifying the target domain. The tool will automatically utilize multiple methods to discover subdomains.


    lsubs -d example.com

    lsubs -l domains.txt

Command-Line Arguments

      -h : help page
      -d DOMAIN, --domain DOMAIN
                        The domain to enumerate subdomains .
      -l List of domains, --list
                        The list of domains to enumerate subdomains 
      --api_key_securitytrails API_KEY_SECURITYTRAILS
                          API key for SecurityTrails (optional)
      --api_key_censys API_KEY_CENSYS
                          API key for Censys (optional)
      --api_key_shodan API_KEY_SHODAN
                          API key for Shodan (optional)
      -A, --api API argument you want to change it          To modify config file

## Methods Implemented

  - DNS Brute-Forcing: Generates possible subdomain names and checks if they resolve.
  - Search Engine Scraping: Extracts subdomains from search engine results.
  - Certificate Transparency Logs: Queries public certificate transparency logs for domain certificates, revealing subdomains.
  - Amass Integration: Leverages the OWASP Amass tool for comprehensive subdomain discovery.
  - Sublist3r Integration: Uses Sublist3r to discover subdomains using search engines.

## Supported Platforms
  - Linux
  - macOS

## Reporting Issues

If you encounter any issues or have suggestions for improvements, please open an issue on GitHub.
