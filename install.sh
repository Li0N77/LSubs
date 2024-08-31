echo "setup configuration"
echo "{\n    \"SecurityTrails\": \"\",\n    \"Censys\": \"\",\n    \"Shodan\": \"\"\n}" > ~/.local/bin/lsubs-config.json
chmod +x lsubs
cp lsubs ~/.local/bin/
echo 'export PATH=$PATH:~/.local/bin/' >> ~/.bashrc
echo 'export PATH=$PATH:~/.local/bin/' >> ~/.zshrc

echo "Installing Python packages..."
pip install -r requirements.txt


echo "Setup complete!"

echo "To run the subdomain enumeration script, use the following command:"
echo "lsubs [-d <domain>] [--api_key_virustotal <key>] [--api_key_securitytrails <key>] [--api_key_censys <key>] [--api_key_shodan <key>] [--api <api arguments>]"
