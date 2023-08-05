$AmazonGamesAppUri = "https://download.amazongames.com/AmazonGamesSetup.exe"
$BattleNetAppUri = "https://www.battle.net/download/getInstallerForGame?os=win&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP"
$BattlestateLauncherAppUri = "https://prod.escapefromtarkov.com/launcher/download"
$BlueStacksAppUri = "https://www.bluestacks.com/download.html"
$EAAppUri = "https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EADesktopInstaller.exe"
$EpicGamesAppUri = "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"
$GameLoopAppUri = "https://www.gameloop.com/"
$GogGalaxyAppUri = "https://webinstallers.gog-statics.com/download/GOG_Galaxy_2.0.exe?payload=2oaYCsoLotJS2XddaL3r1vPuq4xH4BHr39iDMEOyfn-73pOa5K_XZzqdcwxZmgJsszH0PoqRG24HlVO0mzqQWQ7yYz42aUuh0tKhSba4BdryCvpXJ4uuVgSMbaLSH-CXB6_4xD0q6NdheCXTmquUYH9qKvMFp8Ov2XCoiaOk2WoLdyRAx0KRRK1ZwDptsPledKduI5MItbNLldBeGc51XGzWRT9sIL3zgxcOGdgrtNH8kohfGz3h1fWKbrPWqWbq7OIsuUkryapr73sGQu7GdaudjHhf4kouIiOowXXZfAH-ftLeZBX7PVxvMXR0YzsQStzuDqV5YaSlwHnJdnWHz6AYM9imEvFZViDfiq8Nyn7KHwXRbID9sJM28ft1lL52yRN0GTxEvg7iQU7YgUC_fsbrAybgBjghVCXDCsX7-nSYJA4akSexw0XWdlAeE71lc5s4BREqMMm23PNao9Aw_AbnOU3iyZoiqvMw0GK_CYbMIwUOrk2SmWPMrUJz68CRLQGeRgg7QVAFAS3MCeeL2jhsB5sII-rNbIyTFb3_c-_YsuldBunZ9qpLazeq15X65MHazzXT9bZwlbpa_Ow5GoYftiE3m4qWMVB3BXNFsz5lUxS4LeGkxWGJXaRjQr156hRygQPlsc9eD-lKo8oEkJSAksqC6eRrG_eomCU-_JCjFEWG6tWWsAQhq9zFAhWXUph2o9sYt8Kb575yFnV8bEDjdQr3UxfBdDumDLrAkKoOtcNs7rN0baU9fwaMBcGMojFW5gwR"
$HeroicGamesLauncherAppUri = "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/"
$HumbleAppUri = "https://www.humblebundle.com/membership/collection"
$ItchIoAppUri = "https://itch.io/app"
$LaunchBoxAppUri = "https://www.launchbox-app.com/download"
$MinecraftLauncherAppUri = "https://launcher.mojang.com/download/MinecraftInstaller.msi"
$RobloxAppUri = "https://setup.rbxcdn.com/RobloxPlayerLauncher.exe"
$StarCitizenAppUri = "https://robertsspaceindustries.com/download"
$SteamAppUri = "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
$UbisoftAppUri = "https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UbisoftConnectInstaller.exe"
$XboxAppUri = "https://aka.ms/XboxInstaller"

$Dest = "D:\Downloads"

$AmazonGamesIsEnabled = " "
$BattleNetIsEnabled = " "
$BlueStacksIsEnabled = " "
$EAIsEnabled = " "
$EpicGamesIsEnabled = " "
$EscapeFromTarkovIsEnabled = " "
$GameLoopIsEnabled = " "
$GOGGalaxyIsEnabled = " "
$HeroicGamesLauncherIsEnabled = " "
$HumbleIsEnabled = " "
$ItchIoIsEnabled = " "
$LaunchBoxIsEnabled = " "
$MinecraftLauncherIsEnabled = " "
$RobloxIsEnabled = " "
$StarCitizenIsEnabled = " "
$SteamIsEnabled = " "
$UbisoftIsEnabled = " "
$XboxAppIsEnabled = " "
$InstallAllIsEnabled = " "

function Get-AmazonGamesApp {
    Open-Browser($AmazonGamesAppUri)

    Write-Output "Waiting for Amazon Games installer to download..."

    Wait-For-File($Dest + "\AmazonGamesSetup.exe")

    Write-Output "Amazon Games installer downloaded!"
}

function Get-BattleNetApp {
    Open-Browser($BattleNetAppUri)

    Write-Output "Waiting for Battle.net installer to download..."

    Wait-For-File($Dest + "\Battle.net-Setup.exe")

    Write-Output "Battle.net installer downloaded!"
}

function Get-EscapeFromTarkov {
    Open-Browser($BattlestateLauncherAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "BsgLauncher*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found Escape from Tarkov installer!"

            break
        }
    }
}

function Get-BlueStacks {
    Open-Browser($BlueStacksAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "BlueStacks*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found BlueStacks installer!"

            break
        }
    }
}

function Get-EAApp {
    Open-Browser($EAAppUri)

    Write-Output "Waiting for EA App installer to download..."

    Wait-For-File($Dest + "\EAappInstaller.exe")

    Write-Output "EA App1 installer downloaded!"
}

function Get-EpicGamesApp {
    Open-Browser($EpicGamesAppUri)

    Write-Output "Waiting for Epic Games installer to download..."

    Wait-For-File($Dest + "\EpicInstaller-*.msi")

    Write-Output "Epic Games installer downloaded!"
}

function Get-GameLoopApp {
    Open-Browser($GameLoopAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "GLP_installer*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found GameLoop installer!"

            break
        }
    }
}

function Get-GOGGalaxyApp {
    Open-Browser($GOGGalaxyAppUri)

    Write-Output "Waiting for GOG Galaxy installer to download..."

    Wait-For-File($Dest + "\GOG_Galaxy_2.0.exe")

    Write-Output "GOG Galaxy installer downloaded!"
}

function Get-HeroicGamesLauncherApp {
    Open-Browser($HeroicGamesLauncherAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "Heroic*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found Heroic Games Launcher installer!"

            break
        }
    }
}

function Get-ItchIoApp {
    Open-Browser($ItchIoAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "itch-setup*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found itch.io installer!"

            break
        }
    }
}

function Get-HumbleApp {
    Open-Browser($HumbleAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "Humble-App-Setup*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found Humble installer!"

            break
        }
    }
}

function Get-LaunchBoxApp {
    Open-Browser($LaunchBoxAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "LaunchBox*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found LaunchBox installer!"

            break
        }
    }
}

function Get-StarCitizenApp {
    Open-Browser($StarCitizenAppUri)

    while (1) {
        $files = Get-ChildItem -Path $Dest -Filter "RSI-Setup*.exe"

        if ($files.Length -gt 0) {
            Write-Output "Found Star Citizen installer!"

            break
        }
    }
}

function Get-SteamApp {
    Open-Browser($SteamAppUri)

    Write-Output "Waiting for Steam installer to download..."

    Wait-For-File($Dest + "\SteamSetup.exe")

    Write-Output "Steam installer downloaded!"
}

function Get-UbisoftApp {
    Open-Browser($UbisoftAppUri)

    Write-Output "Waiting for Ubisoft installer to download..."

    Wait-For-File($Dest + "\UbisoftConnectInstaller.exe")

    Write-Output "Ubisoft installer downloaded!"
}

function Get-MinecraftLauncherApp {
    Open-Browser($MinecraftLauncherAppUri)

    Write-Output "Waiting for Minecraft Launcher installer to download..."

    Wait-For-File($Dest + "\MinecraftInstaller.exe")

    Write-Output "Minecraft Launcher installer downloaded!"
}

function Get-RobloxApp {
    Open-Browser($RobloxAppUri)

    Write-Output "Waiting for Roblox installer to download..."

    Wait-For-File($Dest + "\RobloxPlayerLauncher.exe")

    Write-Output "Roblox installer downloaded!"
}

# TODO: Doesn't work
function Get-XboxApp {
    Open-Browser($XboxAppUri)

    Write-Output "Waiting for Xbox installer to download..."

    Wait-For-File($Dest + "\XboxInstaller.exe")

    Write-Output "Xbox installer downloaded!"
}

function Get-GameLaunchers {
    if ($AmazonGamesIsEnabled -eq "X") {
        Get-AmazonGamesApp
    }

    if ($BattleNetIsEnabled -eq "X") {
        Get-BattleNetApp
    }

    if ($BlueStacksIsEnabled -eq "X") {
        Get-BlueStacksApp
    }

    if ($EAAppIsEnabled -eq "X") {
        Get-EAApp
    }

    if ($EpicGamesIsEnabled -eq "X") {
        Get-EpicGamesApp
    }

    if ($EscapeFromTarkovIsEnabled -eq "X") {
        Get-EscapeFromTarkov
    }

    if ($GameLoopIsEnabled -eq "X") {
        Get-GameLoopApp
    }

    if ($GOGGalaxyIsEnabled -eq "X") {
        Get-GOGGalaxyApp
    }

    if ($HeroicGamesLauncherIsEnabled -eq "X") {
        Get-HeroicGamesLauncherApp
    }

    if ($HumbleAppIsEnabled -eq "X") {
        Get-HumbleApp
    }

    if ($ItchIoIsEnabled -eq "X") {
        Get-ItchIoApp
    }

    if ($LaunchBoxIsEnabled -eq "X") {
        Get-LaunchBoxApp
    }

    if ($MinecraftLauncherIsEnabled -eq "X") {
        Get-MinecraftLauncherApp
    }

    if ($RobloxIsEnabled -eq "X") {
        Get-RobloxApp
    }

    if ($StarCitizenIsEnabled -eq "X") {
        Get-StarCitizenApp
    }

    if ($SteamIsEnabled -eq "X") {
        Get-SteamApp
    }

    if ($UbisoftAppIsEnabled -eq "X") {
        Get-UbisoftApp
    }

    if ($XboxAppIsEnabled -eq "X") {
        Get-XboxApp
    }

    Write-Output "Finished downloading game launchers!"
}

# TODO: Check for each individual game launcher exe.
function Find-GameLaunchers {
    Write-Output "Verifying game launchers..."

    $files = Get-ChildItem -Path $Dest -Filter "*.exe"

    if ($files.Length -eq 18) {
        Write-Output "Game launchers verified!"
    }
    else {
        Write-Output "Game launchers not verified!"
    }
}

function Install-GameLaunchers {

}

function Open-Browser {
    param (
        [string]$url
    )

    Write-Output "Opening browser to $url..."

    Start-Process $url

    Write-Output "Browser opened!"
}

function Wait-For-File {
    param (
        [string]$path
    )

    Write-Output "Waiting for file $path..."



    while (!(Test-Path $path)) {
        Start-Sleep -Seconds 1
    }

    Write-Output "File $path found!"
}



function Install {
    Write-Output "Installing..."

    Start-Sleep -Seconds 1

    # Fetch the Requested Game Launchers.
    Get-GameLaunchers

    # Verify the Requested Game Launchers were downloaded.
    Find-GameLaunchers

    # Install the Requested Game Launchers.
    Install-GameLaunchers

    Write-Output "Installation complete!"

    Start-Sleep -Seconds 1

    Exit
}

function Exit {
    Write-Output "Exiting Goodbye!"

    Start-Sleep -Seconds 1

    exit
}

function Write-Menu {
    Clear-Host

    Write-Output "##############################################################################################"
    Write-Output "#                                  Game Launchers Installer                                  #"
    Write-Output "#                                     By Tyler Jaacks                                        #"    
    Write-Output "##############################################################################################"
    Write-Output ""

    Write-Output "This script will download and install the following game launchers:"
    Write-Output ""

    Write-Output "[$($AmazonGamesIsEnabled)] 1.  Amazon Games"
    Write-Output "[$($BattleNetIsEnabled)] 2.  Battle.net"
    Write-Output "[$($BlueStacksIsEnabled)] 3.  BlueStacks"
    Write-Output "[$($EAIsEnabled)] 4.  EA"
    Write-Output "[$($EpicGamesIsEnabled)] 5.  Epic Games"
    Write-Output "[$($EscapeFromTarkovIsEnabled)] 6.  Escape From Tarkov"
    Write-Output "[$($GameLoopIsEnabled)] 7.  GameLoop"
    Write-Output "[$($GOGGalaxyIsEnabled)] 8.  GOG Galaxy"
    Write-Output "[$($HeroicGamesLauncherIsEnabled)] 9.  Heroic Games Launcher"
    Write-Output "[$($HumbleIsEnabled)] 10. Humble"
    Write-Output "[$($ItchIoIsEnabled)] 11. itch.io"
    Write-Output "[$($LaunchBoxIsEnabled)] 12. LaunchBox"
    Write-Output "[$($MinecraftLauncherIsEnabled)] 13. Minecraft Launcher"
    Write-Output "[$($RobloxIsEnabled)] 14. Roblox"
    Write-Output "[$($StarCitizenIsEnabled)] 15. Star Citizen"
    Write-Output "[$($SteamIsEnabled)] 16. Steam"
    Write-Output "[$($UbisoftIsEnabled)] 17. Ubisoft"
    Write-Output "[$($XboxAppIsEnabled)] 18. Xbox"
    Write-Output ""
    Write-Output "[$($InstallAllIsEnabled)] 19. Install all"
    Write-Output ""
    Write-Output "Type q to quit."
    Write-Output "Type c to continue."
    Write-Output ""
}

function Main {
    Clear-Host

    Write-Menu

    while (1) {
        $option = Read-Host "Select an option: "

        if ($option -eq "1") {
            if ($AmazonGamesIsEnabled -eq " ") {
                $AmazonGamesIsEnabled = "X"
            }
            else {
                $AmazonGamesIsEnabled = " "
            }
        }
        elseif ($option -eq "2") {
            if ($BattleNetIsEnabled -eq " ") {
                $BattleNetIsEnabled = "X"
            }
            else {
                $BattleNetIsEnabled = " "
            }
        }
        elseif ($option -eq "3") {
            if ($BlueStacksIsEnabled -eq " ") {
                $BlueStacksIsEnabled = "X"
            }
            else {
                $BlueStacksIsEnabled = " "
            }
        }
        elseif ($option -eq "4") {
            if ($EAIsEnabled -eq " ") {
                $EAIsEnabled = "X"
            }
            else {
                $EAIsEnabled = " "
            }
        }
        elseif ($option -eq "5") {
            if ($EpicGamesIsEnabled -eq " ") {
                $EpicGamesIsEnabled = "X"
            }
            else {
                $EpicGamesIsEnabled = " "
            }
        }
        elseif ($option -eq "6") {
            if ($EscapeFromTarkovIsEnabled -eq " ") {
                $EscapeFromTarkovIsEnabled = "X"
            }
            else {
                $EscapeFromTarkovIsEnabled = " "
            }
        }
        elseif ($option -eq "7") {
            if ($GameLoopIsEnabled -eq " ") {
                $GameLoopIsEnabled = "X"
            }
            else {
                $GameLoopIsEnabled = " "
            }
        }
        elseif ($option -eq "8") {
            if ($GOGGalaxyIsEnabled -eq " ") {
                $GOGGalaxyIsEnabled = "X"
            }
            else {
                $GOGGalaxyIsEnabled = " "
            }
        }
        elseif ($option -eq "9") {
            if ($HeroicGamesLauncherIsEnabled -eq " ") {
                $HeroicGamesLauncherIsEnabled = "X"
            }
            else {
                $HeroicGamesLauncherIsEnabled = " "
            }
        }
        elseif ($option -eq "10") {
            if ($HumbleIsEnabled -eq " ") {
                $HumbleIsEnabled = "X"
            }
            else {
                $HumbleIsEnabled = " "
            }
        }
        elseif ($option -eq "11") {
            if ($ItchIoIsEnabled -eq " ") {
                $ItchIoIsEnabled = "X"
            }
            else {
                $ItchIoIsEnabled = " "
            }
        }
        elseif ($option -eq "12") {
            if ($LaunchBoxIsEnabled -eq " ") {
                $LaunchBoxIsEnabled = "X"
            }
            else {
                $LaunchBoxIsEnabled = " "
            }
        }
        elseif ($option -eq "13") {
            if ($MinecraftLauncherIsEnabled -eq " ") {
                $MinecraftLauncherIsEnabled = "X"
            }
            else {
                $MinecraftLauncherIsEnabled = " "
            }
        }
        elseif ($option -eq "14") {
            if ($RobloxIsEnabled -eq " ") {
                $RobloxIsEnabled = "X"
            }
            else {
                $RobloxIsEnabled = " "
            }
        }
        elseif ($option -eq "15") {
            if ($StarCitizenIsEnabled -eq " ") {
                $StarCitizenIsEnabled = "X"
            }
            else {
                $StarCitizenIsEnabled = " "
            }
        }
        elseif ($option -eq "16") {
            if ($SteamIsEnabled -eq " ") {
                $SteamIsEnabled = "X"
            }
            else {
                $SteamIsEnabled = " "
            }
        }
        elseif ($option -eq "17") {
            if ($UbisoftIsEnabled -eq " ") {
                $UbisoftIsEnabled = "X"
            }
            else {
                $UbisoftIsEnabled = " "
            }
        }
        elseif ($option -eq "18") {
            if ($XboxAppIsEnabled -eq " ") {
                $XboxAppIsEnabled = "X"
            }
            else {
                $XboxAppIsEnabled = " "
            }
        }
        elseif ($option -eq "19") {
            if ($InstallAllIsEnabled -eq " ") {
                $AmazonGamesIsEnabled = "X"
                $BattleNetIsEnabled = "X"
                $BlueStacksIsEnabled = "X"
                $EAIsEnabled = "X"
                $EpicGamesIsEnabled = "X"
                $EscapeFromTarkovIsEnabled = "X"
                $GameLoopIsEnabled = "X"
                $GOGGalaxyIsEnabled = "X"
                $HeroicGamesLauncherIsEnabled = "X"
                $HumbleIsEnabled = "X"
                $ItchIoIsEnabled = "X"
                $LaunchBoxIsEnabled = "X"
                $MinecraftLauncherIsEnabled = "X"
                $RobloxIsEnabled = "X"
                $StarCitizenIsEnabled = "X"
                $SteamIsEnabled = "X"
                $UbisoftIsEnabled = "X"
                $XboxAppIsEnabled = "X"
                $InstallAllIsEnabled = "X"
            } else {
                $AmazonGamesIsEnabled = " "
                $BattleNetIsEnabled = " "
                $BlueStacksIsEnabled = " "
                $EAIsEnabled = " "
                $EpicGamesIsEnabled = " "
                $EscapeFromTarkovIsEnabled = " "
                $GameLoopIsEnabled = " "
                $GOGGalaxyIsEnabled = " "
                $HeroicGamesLauncherIsEnabled = " "
                $HumbleIsEnabled = " "
                $ItchIoIsEnabled = " "
                $LaunchBoxIsEnabled = " "
                $MinecraftLauncherIsEnabled = " "
                $RobloxIsEnabled = " "
                $StarCitizenIsEnabled = " "
                $SteamIsEnabled = " "
                $UbisoftIsEnabled = " "
                $XboxAppIsEnabled = " "
                $InstallAllIsEnabled = " "
            }
        }
        elseif ($option -eq "c") {
            Clear-Host
            Install
        }
        elseif ($option -eq "q") {
            Clear-Host
            Exit
        }

        Write-Menu
    }
}

Main