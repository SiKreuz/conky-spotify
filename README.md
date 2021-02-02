# Spotify for conky

With some small scripts you can extend your conky with information about the song currently playing on Spotify. I've done that for you. Enjoy!

## Installation

Installation is quite easy because I've provided a install script for you. So just download this repository and run the install script:

```bash
git clone https://github.com/SiKreuz/conky-spotify.git && cd conky-spotify && ./install.sh
```

Here is a sample how you can use this in your own conky configuration file in the `conky.text` section (usually located at `~/.conkyrc`):

```
# --- Show only when Spotify is running ---
${if_running spotify}
# --- Get cover image ---
${exec ~/.conky/conky-spotify/scripts/cover.sh}
# --- Show cover ---
# Edit the position (-p option) so it fits.
${image ~/.conky/conky-spotify/last_cover.png -p 0,0 -s 112x112 -n}
# --- Show song information ---
${voffset -114}
${goto 124}${font Noto Sans:size=7}Title:
${goto 132}${font GE Inspira:size=14}${exec ~/.conky/conky-spotify/scripts/song.sh}
${voffset -32}
${goto 124}${font Noto Sans:size=7}Artist:
${goto 132}${font GE Inspira:size=14}${exec ~/.conky/conky-spotify/scripts/artist.sh}
${voffset -32}
${goto 124}${font Noto Sans:size=7}Album:
${goto 132}${font GE Inspira:size=14}${exec ~/.conky/conky-spotify/scripts/album.sh}
${voffset -32}${font}
${endif}
```

