# Set your PowerShell execution policy
Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey
Invoke-Expression -Command ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Chocolatey packages
choco install autohotkey -y
choco install everything -y
choco install git -y
choco install launchy -y
choco install microsoft-windows-terminal -y
choco install neovim -y
choco install rust -y

choco install brave -y
choco install discord -y
choco install expressvpn -y
choco install notepadplusplus -y
choco install potplayer -y
choco install spotify -y
choco install steam -y

# Add init.vim

# Install PowerShell modules
Install-Module -Name 'posh-git'