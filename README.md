# sweetdwm 

## introduction 
this is a fork of sweetdwm but with some improvements such as changing dash to bash to increase portability and the application of several patches to increase functionality also fixed bugs such as buffer overflow and automated several processes to facilitate the installation.

<img src="https://github.com/SweetMask4/sweetdwm/blob/screenshots/screenshots/default.png?raw=true">
<img src="https://github.com/SweetMask4/dotfiles/blob/screenshot/dmenu.png?raw=true">

# Requirements

- bash (shell)
- imlib2 
- xsetroot package (status2d uses this to add colors on dwmbar)
- JetbrainsMono Nerd Font or any nerd font but dont forget to set it in config.def.h
- Make sure to setup your terminal's theme accordingly do sweetdwm's theme such as nord, onedark etc...

## Other requirements
- picom
- xwallpaper
- [dmenu](https://github.com/SweetMask4/dmenu) try my dmenu compilation
- [scripts](https://github.com/SweetMask4/scripts)

# Install

```
git clone https://github.com/siduck/sweetdwm --depth 1  ~/.config/sweetdwm
cd ~/.config/sweetdwm/
mv eww ~/.config
cd sweetdwm
sudo make install
```
(Note: chmod +x all of the scripts)

# Run sweetdwm

## With startx

```shell
startx ~/.config/sweetdwm/scripts/run.sh
```

## With sx

```shell
sx sh ~/.config/sweetdwm/scripts/run.sh
```

(Make an alias for this :v)

```shell
alias sweetdwm='startx ~/.config/sweetdwm/scripts/run.sh'
```

## With Display Manager

- Create a desktop entry (make sure to change `user` with your user):

```shell
sudo touch /usr/share/xsessions/sweetdwm.desktop  
```

```
[Desktop Entry]
Name=sweetdwm
Comment=dwm made beautiful 
Exec=/home/user/.config/sweetdwm/scripts/./run.sh 
Type=Application 
```

- [wallpaper](https://github.com/siduck/sweetdwm/blob/screenshots/screenshots/chad.png)

# Recompile

- You need to recompile dwm after every change you make to its source code.

```
cd ~/.config/sweetdwm/sweetdwm
rm config.h
sudo make install
```
# Change themes

- Bar  : in bar.sh (line 9) and config.def.h (line 35)
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
| **mod + c**              | dmenu                    |
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
- attachaside
