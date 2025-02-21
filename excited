$URLOFWAV = "https://github.com/icylucids/jump/blob/main/Iyaz%20-%20Replay%20%EF%BD%9C%20Lyrics(1).wav"

# Create a shell object to increase volume
$shell = New-Object -ComObject WScript.Shell
for ($i = 0; $i -lt 100; $i++) {
    $shell.SendKeys([char]175)  # Max volume
}

# Download the WAV file to the temp folder
$TempWav = "$env:TMP\tempWav.wav"
Invoke-WebRequest -Uri $URLOFWAV -OutFile $TempWav

# Play the sound
$soundPlayer = New-Object System.Media.SoundPlayer
$soundPlayer.SoundLocation = $TempWav
$soundPlayer.PlaySync()

# Clean up temp files
Remove-Item -Path $TempWav -Force -ErrorAction SilentlyContinue
