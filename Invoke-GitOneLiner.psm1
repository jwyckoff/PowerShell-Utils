function Invoke-GitOneLiner {
    param (
        [Parameter(HelpMessage = 'git commit message. Default is date.')]
        [string]$commitMessage =  (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
    ) 

    git add .
    if($LASTEXITCODE -ne 0) {
        Write-Host "git add . failed"
        return
    }

    git commit -m $commitMessage
    if($LASTEXITCODE -ne 0) {
        Write-Host "git commit failed"
        return
    }
    git push
    if($LASTEXITCODE -ne 0) {
        Write-Host "git push failed"
        return
    }
    
}