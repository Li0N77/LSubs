# LSubs
### SubDomain Tnumeration Tool
A powerful and extensible Python-based subdomain enumeration tool designed to help security researchers and penetration testers identify subdomains associated with a target domain. The tool leverages multiple techniques and integrates with various third-party services to discover as many subdomains as possible.

## Features

  - Multiple Enumeration Techniques: Utilizes several methods for subdomain discovery, including DNS brute-forcing, public search engines, certificate transparency logs, and more.
  
  - No API Key Requirement: Most modules work without API keys, making the tool accessible to everyone. However, it does support SecurityTrails API for additional data.

# Installation
If you are on a Linux or macOS system with Bash available, you can use the provided install.sh script to automate the installation process.

Clone the Repository:

    git clone https://github.com/Li0N77/lsubs.git
    cd lsubs
  
  Run the Installation Script:

    sudo ./setup.sh

This script will:

  - Install required Python packages.
  - Install Amass, Sublist3r, and if they are not already installed on your system.

## Configuration

To use APIs from services like SecurityTrails, Censys, and Shodan, you need to provide your API keys in a configuration file.

in the file named config.json :

    {
        "SecurityTrails": "YOUR_SECURITYTRAILS_API_KEY",
        "Censys": "YOUR_CENSYS_API_KEY",
        "Shodan": "YOUR_SHODAN_API_KEY"
    }

  - Replace YOUR_SECURITYTRAILS_API_KEY, YOUR_CENSYS_API_KEY, and YOUR_SHODAN_API_KEY with your actual API keys.
  - If you do not wish to use any of these APIs, you can leave the corresponding values as empty strings (""). For example:

        {
            "SecurityTrails": "",
            "Censys": "",
            "Shodan": ""
        }

  - The tool will still function without API keys, but some methods may have limited capabilities or reduced data coverage.

## Usage

Run the tool by specifying the target domain. The tool will automatically utilize multiple methods to discover subdomains.


    python lsubs.py example.com

Command-Line Arguments

      -h : help page
      domain : (Required) The target domain for subdomain enumeration.
      --api_key_securitytrails API_KEY_SECURITYTRAILS
                          API key for SecurityTrails (optional)
      --api_key_censys API_KEY_CENSYS
                          API key for Censys (optional)
      --api_key_shodan API_KEY_SHODAN
                          API key for Shodan (optional)
      -f FILE, --file FILE  Custom subdomains file (optional)
      -nf, --no_fuzz        Disable subdomains fuzzing (optional)

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
