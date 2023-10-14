#!/bin/bash
# TODO: Get a POSIX compliant version

dunstify "Loading playlists..." -i /usr/share/icons/ePapirus-Dark/16x16/actions/cloud-download.svg -h "string:x-dunst-stack-tag:yt"

playlists=$(yt-dlp --flat-playlist --print '%(title)s,%(url)s' "https://www.youtube.com/@miguelg7012/playlists")

# Just paste the link to your fav artist channel
# playlists=$(yt-dlp --flat-playlist --print '%(title)s,%(url)s' "https://www.youtube.com/@crystal_castles/playlists")

# Array of playlists
IFS='
' playlist_array=($playlists)

# Extract playlist names and URLs from the array
playlist_names=""
playlist_urls=""
for playlist_info in "${playlist_array[@]}"; do
  name=$(echo "$playlist_info" | cut -d ',' -f 1)
  url=$(echo "$playlist_info" | cut -d ',' -f 2)
  playlist_names+="$(echo "$name" | sed 's/\\/,/g')\n"
  playlist_urls+="$(echo "$url" | sed 's/\\/,/g')\n"
done

# Show the playlists in dmenu and get the selected playlist
selected_playlist=$(echo -e "$playlist_names" | dmenu -i -p "Choose a playlist:" -b -fn 'Dejavu Sans Book:size=11' -nb '#000000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000') || exit 1

dunstify "Fetching videos..." -i /usr/share/icons/ePapirus-Dark/16x16/actions/search.svg -h "string:x-dunst-stack-tag:yt"

# Find the corresponding playlist URL
index=$(echo -e "$playlist_names" | grep -Fn "$selected_playlist" | cut -d ':' -f 1)
playlist_url=$(echo -e "$playlist_urls" | sed "${index}q;d")

# Get the videos in the selected playlist
videos=$(yt-dlp --flat-playlist --print '%(title)s,%(url)s' "$playlist_url")

# Create an array of video names
IFS='
' video_array=($videos)

# Extract video names and URLs from the array
video_names=""
video_urls=""

for video_info in "${video_array[@]}"; do
  name=$(echo "$video_info" | cut -d ',' -f 1)
  url=$(echo "$video_info" | cut -d ',' -f 2)
  video_names+="$(echo "$name" | sed 's/\\/,/g')\n"
  video_urls+="$(echo "$url" | sed 's/\\/,/g')\n"
done

# Show the videos in dmenu
selected_video=$(echo -e "$video_names" | dmenu -i -b -l 10 -fn 'Dejavu Sans Book:size=11' -nb '#000000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000') || exit 1

# Find the corresponding video URL
index=$(echo -e "$video_names" | grep -Fn "$selected_video" | cut -d ':' -f 1)
video_url=$(echo -e "$video_urls" | sed "${index}q;d")

# Open the selected video URL
if [ -n "$video_url" ]; then

  dunstify "Downloading metadata..." -i /usr/share/icons/ePapirus/24x24/panel/youtube-indicator-downloading-light.svg -h "string:x-dunst-stack-tag:yt"
  # This section is still a bit wonky
  playerctl stop
  mpv  --ytdl-format=ba $video_url

  length=""

  while [ -z "$length" ]; do
      length=$(playerctl -s metadata mpris:length)
      sleep 0.1
  done

  url=$(playerctl metadata mpris:artUrl)
  title=$(playerctl metadata xesam:title)
  artist="$(playerctl metadata artist)"

  temp_file=$(mktemp)
  
  curl -s $url -o "$temp_file"
  dunstify -i "$temp_file" -h "string:x-dunst-stack-tag:yt" "$title" "$artist"
fi