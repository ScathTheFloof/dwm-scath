# dwm-scath
this is my personal config

# Cozy setup
this is my new cozy little dwm setup that I have now\
I swapped out rxvt-unicode for alacritty because yes

## what's included
dmenu \
dwmblocks \
dwm (of course) 

## other things that you need for this to work
feh (optional)\
i3lock-color\
alacritty\
pamixer\
picom (fdev31) [link](https://github.com/fdev31/picom)


## note for some people
if you know the keybindings then you know that the 'modkey' is alt by default \
Well in my configuration it is the super key because that's what I have used for every other window manager that I have used, and I am not going to change it because I switched to using dwm. \
\
Just letting you know before you were confused as to why the hotkeys weren't working.


if you are a seasoned user who is reviewing this build of dwm for whatever reason. All you have to do is change the key definition for the "MODKEY" variable in config.h or config.def.h (whichever one that you use, I use config.h)


# What is this
like I said this is my personal config.
however you are free to use this if you wish. Feel free to change this configuration. Use this as a starting point for configuring dwm.

# INSTALLATION INSTRUCTIONS
run compile.sh to compile and install dwm, dmenu, and dwm.\
run script-install.sh to move the scripts to where they need to go\
if you have alredy installed these scripts and you want to update them run script-update.sh\
move the file in dwm-autostart to ~/.dwm/ (make the directory if needed with `mkdir ~/.dwm/`)\
move the `Wallpapers` directory to your home directory\
move the directories in `config` over to your `~/.config` directory (the script in there has the lock script utilized by i3lock-color)

# INSTALLATION NOTES
if you don't want to use feh for your wallpaper utility, feel free to edit the file and change it to your preferred wallpaper utility.
