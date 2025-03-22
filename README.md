# 🎨 PowerShell Profile (Pretty PowerShell)

Version 1.04 - `setprofile.ps1` updated to download the PowerShell profile directly from GitHub.

A stylish and functional PowerShell profile that looks and feels almost as good as a Linux terminal.

## ⚡ One Line Install (Elevated PowerShell Recommended)

Execute the following command in an elevated PowerShell window to install the PowerShell profile:

```
irm "https://raw.githubusercontent.com/stevie86/powershell-profile/dev2025/setup.ps1" | iex
```

The `setup.ps1` script accepts an optional `-Backup` switch. If this switch is present, the script will back up your existing PowerShell profile before installing the new profile. If the switch is not present, the script will not back up your existing profile.

Example with backup:
```
irm "https://raw.githubusercontent.com/stevie86/powershell-profile/dev2025/setup.ps1" | iex -Backup
```
Example without backup:
```
irm "https://raw.githubusercontent.com/stevie86/powershell-profile/dev2025/setup.ps1" | iex
```

## 🛠️ Fix the Missing Font

After running the script, you'll have two options for installing a font patched to support icons in PowerShell:

### 1) You will find a downloaded `cove.zip` file in the folder you executed the script from. Follow these steps to install the patched `Caskaydia Cove` nerd font family:

1. Extract the `cove.zip` file.
2. Locate and install the nerd fonts.

### 2) With `oh-my-posh` (loaded automatically through the PowerShell profile script hosted on this repo):
1. Run the command `oh-my-posh font install`
2. A list of Nerd Fonts will appear like so:
<pre>
PS> oh-my-posh font install

   Select font

  > 0xProto
    3270
    Agave
    AnonymousPro
    Arimo
    AurulentSansMono
    BigBlueTerminal
    BitstreamVeraSansMono

    •••••••••
    ↑/k up • ↓/j down • q quit • ? more</pre>
3. With the up/down arrow keys, select the font you would like to install and press <kbd>ENTER</kbd>
4. DONE!
   
## Customize this profile

**Do not make any changes to the `Microsoft.PowerShell_profile.ps1` file**, since it's hashed and automatically overwritten by any commits to this repository.

After the profile is installed and active, run the `Edit-Profile` function to create a separate profile file for your current user. Make any changes and customizations in this new file named `profile.ps1`.

## Testing the Dev Branch Locally

To test your Dev Branch locally, follow these steps:

1.  Copy the `Microsoft.PowerShell_profile.ps1` file to your PowerShell profile directory. The PowerShell profile directory is usually located at `$HOME\Documents\PowerShell`.
2.  Restart PowerShell.

The changes should now be effective in PowerShell.

Now, enjoy your enhanced and stylish PowerShell experience! 🚀
