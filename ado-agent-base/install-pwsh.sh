# Install pre-requisite packages.
apt-get install -y --no-install-recommends wget

# Get the version of Ubuntu
source /etc/os-release

# Download the Microsoft repository keys
curl -O https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository keys
dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file
rm packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
apt-get update

###################################
# Install PowerShell
apt-get install -y powershell
