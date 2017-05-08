  curl --silent "https://api.github.com/repos/JustArchi/ArchiSteamFarm/releases/latest" | # Get latest release
    grep '"browser_download_url":' |                                            # Get download url's
    sed -E 's/.*"([^"]+)".*/\1/' > latest.txt                                   # Pluck JSON value and write to file
  grep 'ASF-ConfigGenerator.exe' latest.txt > download.txt                      # read and output spesific link to another file
  wget -i download.txt -N                                                       # download file
  sudo rm latest.txt
  sudo rm download.txt
