# PowerShell Settings

- **Original File:** `profile.ps1`
- **Location System:** `%USERPROFILE%\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1`
- **Location Cmder:** `%ONEDRIVE%\Programas\Portables\Cmder\vendor\profile.ps1`

### Oh-My-Posh Configuration

- Follow the install process here: [Oh My Posh Install](https://ohmyposh.dev/docs/windows)
- Install Nerd Fonts: [Download Nerd Fonts](https://github.com/giosepeluiz/workflow-defaults/tree/main/windows-terminal-settings/nerd-fonts)
- Enable Oh-My-Posh Prereleases: `Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease -Force`
- Install Posh-Git: `PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force`
- Or update: `PowerShellGet\Update-Module posh-git`
- See the themes: `Get-PoshThemes`
- Test your theme: `Set-PoshPrompt -Theme NAME`
- Finally, in `profile.ps1`, define your theme as default:

```
  # Oh-My-Posh Optional Config
  # Import-Module posh-git
  # Import-Module oh-my-posh
  
  # Oh-My-Posh Theme
  Set-PoshPrompt -Theme NAME
```
