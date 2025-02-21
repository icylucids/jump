# Set the URL to your WAV file
$URLOFWAV = "https://raw.githubusercontent.com/icylucids/jump/main/Iyaz%20-%20Replay.wav"

# Increase volume to max
$shell = New-Object -ComObject WScript.Shell
for ($i = 0; $i -lt 50; $i++) {
    $shell.SendKeys([char]175)
}

# Download the WAV file
$outputPath = "$env:TEMP\tempWav.wav"
Invoke-WebRequest -Uri $URLOFWAV -OutFile $outputPath

# Play the WAV file
$soundPlayer = New-Object System.Media.SoundPlayer
$soundPlayer.SoundLocation = $outputPath
$soundPlayer.PlaySync()

# Clean up the temp file
Remove-Item -Path $outputPath -Force
