#!/bin/bash
cd ~
cd ~/.config/bspwm
wget https://raw.githubusercontent.com/kyb3rbat/bspwm/master/examples/bspwmrc
chmod +x bspwmrc
cd ~/.config/sxhkd
wget https://raw.githubusercontent.com/kyb3rbat/bspwm/master/examples/sxhkdrc
chmod +x sxhkrc
cd ~
