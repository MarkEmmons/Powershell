# Default location
Set-Location -Path "C:\Users\Mark\Documents"

Invoke-Item -Path 'AutoHotKey\VimBindings.ahk'

Import-Module -Name PSReadline

# Close with Ctrl+d
Set-PSReadlineKeyHandler -Key Ctrl-d -Function DeleteCharOrExit

# Better tab completion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -ShowToolTips

# Better History Search
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# PERL-isms
Function ql { $args }
Function qs { "$args" }

# Open neovim
Set-Alias vim 'C:\Program Files\Neovim\bin\nvim.exe'
$vimrc = 'C:\Users\Mark\AppData\Local\nvim'
