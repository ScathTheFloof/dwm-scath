#! /bin/sh

echo "ScathTheFloof's dwm build" | figlet

sleep 3s

echo "this script will use sudo to run some tasks"

# setting all the binaries as executable
sudo chmod +x bin/*

# Moving all the precompiled binaries to /usr/bin
sudo mv bin/picom /usr/bin
sudo mv bin/urxvt /usr/bin
sudo mv bin/urxvtd /usr/bin
sudo mv bin/i3lock /usr/bin

# Moving configuration files into .config
#	making the directories in case they don't exist
mkdir ~/.config/picom/
mkdir ~/.config/scripts/

#	actually moving the files
mv config/lock ~/.config/scripts/
mv config/picom/picom.conf ~/.config/picom/

# Compiling all the suckless parts
make -C dwm-6.5
make -C dmenu-5.3
make -C slstatus-1.0

# installing all the suckless software
sudo make install -C dwm-6.5
sudo make install -C dmenu-5.3
sudo make install -C slstatus-1.0

echo `
!-------------------------------------------------------------------------------
! Xft settings
!-------------------------------------------------------------------------------

Xft.dpi:                    96
Xft.antialias:              true
Xft.rgba:                   rgb
Xft.hinting:                true
Xft.hintstyle:              hintslight

!-------------------------------------------------------------------------------
! URxvt terminal
!-------------------------------------------------------------------------------

URxvt.depth:                32
URxvt.geometry:             180x124
URxvt.transparent:          false
URxvt.fading:               0
! URxvt.urgentOnBell:         true
! URxvt.visualBell:           true
URxvt.loginShell:           true
URxvt.saveLines:            50
URxvt.internalBorder:       3
URxvt.lineSpace:            0

! Fonts
URxvt.allow_bold:           false
/* URxvt.font:                 -*-terminus-medium-r-normal-*-12-120-72-72-c-60-iso8859-1 */
#URxvt*font: xft:FiraMonoFor Nerd Font Mono:pixelsize=20
URxvt*font: xft:Monospace:antialias=true:pixelsize=12 \ 
xft:xft:Monospace for Powerline Book




! Fix font space
URxvt*letterSpace: -1

! Scrollbar
URxvt.scrollStyle:          rxvt
URxvt.scrollBar:            false

! Perl extensions
URxvt.perl-ext-common:      default,matcher
URxvt.matcher.button:       1
URxvt.urlLauncher:          firefox

! Cursor
URxvt.cursorBlink:          true
URxvt.cursorColor:          #657b83
URxvt.cursorUnderline:      false

! Pointer
URxvt.pointerBlank:         true

! keybinds
URxvt.keysym.Shift-Control-V: eval:paste_clipboard
URxvt.keysym.Shift-Control-C: eval:selection_to_clipboard
URxvt.keysym.Shift-Up: command:\033]720;1\007
URxvt.keysym.Shift-Down: command:\033]721;1\007
URxvt.keysym.Control-Up: \033[1;5A
URxvt.keysym.Control-Down: \033[1;5B
URxvt.keysym.Control-Right: \033[1;5C
URxvt.keysym.Control-Left: \033[1;5D

! Disabling ISO 14755 MODE (Ctrl+Shift)
URxvt.iso14755: false
URxvt.iso14755_52: false

!!Source http://github.com/altercation/solarized

*background: [75]#000000
*foreground: #657b83
!!*fading: 40
*fadeColor: #002b36
*cursorColor: #93a1a1
*pointerColorBackground: #586e75
*pointerColorForeground: #93a1a1

!! black dark/light
*color0: #073642
*color8: #002b36

!! red dark/light
*color1: #dc322f
*color9: #cb4b16

!! green dark/light
*color2: #859900
*color10: #586e75

!! yellow dark/light
*color3: #b58900
*color11: #657b83

!! blue dark/light
*color4: #268bd2
*color12: #839496

!! magenta dark/light
*color5: #d33682
*color13: #6c71c4

!! cyan dark/light
*color6: #2aa198
*color14: #93a1a1

!! white dark/light
*color7: #d0d0d0
*color15: #eeeeee
` >> ~/.Xdefaults

echo "Installation complete" | figlet
