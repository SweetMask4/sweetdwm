# sweetdwm 

## introduction 
this is a fork of chadwm but with some improvements such as changing dash to bash to increase portability and the application of several patches to increase functionality also fixed bugs such as buffer overflow and automated several processes to facilitate the installation.

<img src="https://github.com/SweetMask4/sweetdwm/blob/screenshots/screenshots/default.png?raw=true">
<img src="https://github.com/SweetMask4/sweetdwm/blob/screenshots/screenshots/dmenu.png?raw=true">

# Requirements

- bash (shell)
- imlib2 
- xsetroot package (status2d uses this to add colors on dwmbar)
- JetbrainsMono Nerd Font or any nerd font but dont forget to set it in config.def.h
- Make sure to setup your terminal's theme accordingly do chadwm's theme such as nord, onedark etc...

## Other requirements
- picom
- xwallpaper
- [dmenu](https://github.com/SweetMask4/dmenu) try my dmenu compilation
- rofi
- [scripts](https://github.com/SweetMask4/scripts)


# Install

```shell
git clone https://github.com/SweetMask4/sweetdwm.git --depth 1  ~/.config/sweetdwm
```
change to the directory where the sweetdwm files are located.
``` shell
cd ~/.config/sweetdwm/
```
move the settings
``` shell
mv rofi ~/.config
mv eww ~/.config
mv autostart/sweetdwm ~/.local/share
```
change to the source code directory and install sweetdwm
``` shell
cd sweetdwm
sudo make install
```

# Run sweetdwm

## With startx

```shell
startx dwm
```

## With Display Manager
if you have a display manager just select sweetdwm to start.

# Recompile
- You need to recompile dwm after every change you make to its source code.

```
cd ~/.config/sweetdwm/sweetdwm
rm config.h
sudo make install
```

# Change themes

- Bar  : in bar.sh (line 9) and config.def.h (line 35)
- eww  : in eww.scss (line 1)
- rofi : in config.rasi (line 15)
- dmenu : in config.def.h (line 23)

# start configuration
to configure which programs and scripts start when sweetdwm is opened go to ~/.local/share/sweetdwm/autostart.sh file

# shortcuts 
these are the basic shortcuts if you want to know more check the ~/.config/sweetdwm/seetdwm/config.def.h file.

| Key                      | Action                  |
|--------------------------|-------------------------|
| **mod + return**         | launch terminal         |
| **mod + k**              | previous window         |
| **mod + j**              | next window             |
| **mod + w**              | kill window             |
| **mod + [12345]**        | go to workspace [12345] |
| **mod + ctrl + r**       | restart sweetdwm        |
| **mod + shift + q**      | logout                  |
| **mod + b**              | launch browser          |
| **mod + c**              | rofi                    |
| **mod + shift + return** | launch dmenu            |

# Patches

- barpadding 
- bottomstack
- cfacts
- dragmfact 
- dragcfact (took from [bakkeby's build](https://github.com/bakkeby/dwm-flexipatch))
- fibonacii
- gaplessgrid
- horizgrid
- movestack 
- vanity gaps
- colorful tags
- statuspadding 
- status2d
- underline tags
- notitle
- winicon
- [preserveonrestart](https://github.com/PhyTech-R0/dwm-phyOS/blob/master/patches/dwm-6.3-patches/dwm-preserveonrestart-6.3.diff). This patch doesnt let all windows mix up into tag 1 after restarting dwm.
- shiftview
- restartsig
- scratchpads
- windowmap
- swallow
- keychord
- autostart
