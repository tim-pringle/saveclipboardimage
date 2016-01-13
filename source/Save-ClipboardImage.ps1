Register-EngineEvent -SourceIdentifier PowerShell.OnIdle -Action {
    $content = Get-Clipboard -Format Image
    If ($content) 
    {
        $path = $psISE.CurrentFile.FullPath | Split-Path
        $filename = "$path\ImageCap - " + (Get-date -Format 'hh-mm-ss') + '.png'
        $content.Save($filename,'png')
        Set-Clipboard -Value $Null
    }
} 


