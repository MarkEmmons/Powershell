# Default location
Set-Location -Path "$Home\Documents"
Function dc { Set-Location -Path "$Home\Documents" }

# Hotkeys
If(Get-Process -Name AutoHotkey -ErrorAction SilentlyContinue) {
	Invoke-Item -Path 'AutoHotKey\VimBindings.ahk'
}

# Close with Ctrl+d
Set-PSReadlineKeyHandler -Key Ctrl-d -Function DeleteCharOrExit

# Better tab completion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -ShowToolTips

# Better History Search
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -HistorySearchCursorMovesToEnd:$True

# PERL-isms
Function ql { $args }
Function qs { "$args" }

# Open neovim
Set-Alias vim 'C:\Program Files\Neovim\bin\nvim.exe'
$vimrc = 'C:\Users\Mark\AppData\Local\nvim'

Function dc { Set-Location -Path 'C:\Users\Mark\Documents' }

### TODO ###
# more consistent keybindings between term,posh,vim
# fix vim cursor not being a block in normal mode // This is a conemu thing
#	// insert should go to end of line
# 
# lifetimes / pointers
# 
# fzf