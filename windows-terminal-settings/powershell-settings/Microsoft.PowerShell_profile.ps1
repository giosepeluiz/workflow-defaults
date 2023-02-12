# Once Created these code blocks cannot be overwritten
  # if (-not $(get-command PrePrompt).Options -match 'Constant') {Set-Item -Path function:\PrePrompt   -Value $PrePrompt   -Options Constant}
  # if (-not $(get-command CmderPrompt).Options -match 'Constant') {Set-Item -Path function:\CmderPrompt -Value $CmderPrompt -Options Constant}
  # if (-not $(get-command PostPrompt).Options -match 'Constant') {Set-Item -Path function:\PostPrompt  -Value $PostPrompt  -Options Constant}

  Set-Item -Path function:\PrePrompt   -Value $PrePrompt   -Options Constant
  Set-Item -Path function:\CmderPrompt -Value $CmderPrompt -Options Constant
  Set-Item -Path function:\PostPrompt  -Value $PostPrompt  -Options Constant

  # Functions can be made constant only at creation time
  # ReadOnly at least requires `-force` to be overwritten
  # if (!$(get-command Prompt).Options -match 'ReadOnly') {Set-Item -Path function:\prompt  -Value $Prompt  -Options ReadOnly}
  Set-Item -Path function:\prompt  -Value $Prompt  -Options ReadOnly

  # Shows navigable menu of all options when hitting Tab
  Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

  # Autocompletion for arrow keys
  Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
  Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

  # New-Alias <alias> <aliased-command>
  New-Alias open ii
  New-Alias y yarn
  New-Alias n npm
  New-Alias c code

  # Oh-My-Posh Config
  Set-PoshPrompt -Theme darkblood
