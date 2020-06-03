# Kyb3rvotarOS

Un pequeño script progrmando en bash para poder instalarse el entonrno de escritorio de @s4vitar y @vowkn rapido y sencillo.


<h1>Instalación</h1>
 Aqui les dejo los comandos para instalarse la configuración:

```
sudo apt-get install wget git -y
cd ~
wget https://raw.githubusercontent.com/kyb3r-bat/Kyb3rvotarOS/master/install.sh
chmod +x install.sh
sudo apt-get update
./install.sh
```

<h2>IMPORTANTE</h2>

- **IMPORTANTE:** Este script fue probado en Kali Linux 2020.2 y Parrot OS Security 4.7, si te ocurre algún problema en futuras versiones o en otros sistemas operativos puedes contactarme mediante mis redes sociales o mi correo publico el cual esta en mi perfil de github o bien en el apartado "Contact".


- **NOTA** Esta configuración no es creada por, yo solo desarrolle esta epqueña herramienta, la configuración fue totalme desarrolada por mis comprañero @s4vitar (MArcelo Vázquez) y @vowkn (Víctor Laza) a los cuales les envio un fuerte abrazo 😄👨🏻‍💻.


- **ERRORES:** Debido a que esta herramienta aún esta en su fase de desarrollo tiene algúnos errores, los cuales hacen que no sea totalmente automatizada, aqui las soluciones:

**TERMINAL:** Esto no es un error solo que tienes que configurarte la terminal tu solo en el video del review de esta herramienta te muestro como [aqui]() el video.

**bspwm_resize:** Cuando quieres resizear la ventana tienes que utilizar un script que te lo tienes que programar para que funcione, yo por mi parte lo programe lo subi a mi git al igual que bspwmrc y sxhkrc, pero al momento de descargarlo con wget (tambien probe con curl, )y darle los permisos necesarios no funciona al entrar a bspwm, la solución temporal es tenerlo que crearlo tu mismo aqui los comandos e indicaciones para hacerlo.

(Desbes de estar en tu cuenta donde instalaste la configuración)

```
cd ~/.config/bspwm/
mkdir scripts
cd scripts
touch bspwm_resize
chmod +x bspwm_resize
nano bspwm_resize
```

En este punto te abrira nano (pico) y deberas pegar lo siguiente:

```
#!/usr/bin/env dash

if bspc query -N -n focused.floating > /dev/null; then
	step=20
else
	step=100
fi

case "$1" in
	west) dir=right; falldir=left; x="-$step"; y=0;;
	east) dir=right; falldir=left; x="$step"; y=0;;
	north) dir=top; falldir=bottom; x=0; y="-$step";;
	south) dir=top; falldir=bottom; x=0; y="$step";;
esac

bspc node -z "$dir" "$x" "$y" || bspc node -z "$falldir" "$x" "$y"
```

Luego deberas guardar el archivo con **Ctrl + O** y luego salir con **Ctrl + X**, una vez realizado todo esto ya tendras configurado en bspwm_resize 😊

- **POWERLEVEL10k** El error consiste en que no puedo configurarlo hasta que no se cree el archivo .p10k.zsh pero este se crea hasta que se configura totalmente el powerlevel10k, para solucionarlo que tendras que hacerlo manualmente aqui los comandos (se deben de ejucatar con el usuario donde se este instalando 🙂):

```
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
zsh
```

Aqui deberas selecionar la configuración seleccióna cualquiera al azar, una vez teminado cambiaras esto con estos comandos:

```
exit
```

```
rm ~/.p10k.zsh
cd ~
wget https://raw.githubusercontent.com/kyb3r-bat/configs_Kyb3rvotarOS/master/zsh/p10k_normal.zsh
mv ~/p10k_normal.zsh ~/.p10k.zsh
cd ~
wget https://raw.githubusercontent.com/kyb3r-bat/configs_Kyb3rvotarOS/master/kyb3r_config/zshrc
rm ~/.zshrc
mv ~/zshrc ~/.zshrc
```

En los campos "user" debe ir tu usuario normal (si lo instalaste en root deberas puedes saltarte este paso 🙃)


Ahora deberas cambiar la zsh pero para el usuario root con los siguientes comandos:

```
sudo su
```

Ingresas la contraseña de tu usuario 😶, luego continuas con los comandos:

```
cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
zsh
```
Al igual que en usuario normal (si lo has instalado en root puedes saltar este paso 😉), deberas selecionar la configuración seleccióna cualquiera al azar, una vez teminado cambiaras esto con estos comandos:

Ahora crearas un link para el usuario root del zsh de tu usuario normal y configuraras el powerlevel10k (esto se debe ejucatar como el usuario root), si utilizaras root salta esta parte 🙃:

```
exit
```

```
cd ~
rm .zshrc
sudo ln -s -f /home/username/.zshrc /root/.zshrc
rm .p10k.zsh
cd ~
wget https://raw.githubusercontent.com/kyb3r-bat/configs_Kyb3rvotarOS/master/zsh/p10k_root.zsh
mv /root/p10k_root.zsh /root/.p10k.zsh
```

Y por ultimo cambiaras la shell predeterminada para los usuarios 😃

```
sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh username
```

En los campos "username" debe ir tu usuario normal (si lo instalaste en root deberas puedes saltarte este paso 🙃)
Ahora ya has terminado de configurarse el entorno de trabajo siguenos en nuestras redes sociales y luego despues de ello puedes hacer un kill -9 -1 para iniciar la confuración tambien puedes ver como hacer todo esto manualmente en el video de mi compañero @s4vitar en este link:  [nmapypadentro](https://www.youtube.com/watch?v=MF4qRSedmEs&t=7848s) o instalarte mi variación a esta genial configuración [aqui](https://github.com/kyb3r-bat/configs_Kyb3rvotarOS/blob/master/kyb3r_config/Install.md), o si eres muy peresozo y quieres ya todo esto configurando puedes ir [aqui](https://github.com/kyb3r-bat/Kyb3rvotarOS/releases) y descargarte el sistema ya configurado 🤩


## Contact

@s4vitar (Marcelo Váquez):

- [Twitter](https://twitter.com/S4vitar)
- [Instagram](https://www.instagram.com/s4vitarx/)
- [GitHub](https://www.github.com/s4vitar)
- [Page](https://s4vitar.github.io)
- [Youtube](https://www.youtube.com/channel/UCNHWpNqiM8yOQcHXtsluD7Q)

@vowkin (Víctor Laza):

- [Twitter](https://twitter.com/by_orux)
- [Github](https://github.com/vowkn)

@kyb3r.bat (Gael González):

- [Twitter](https://twitter.com/kyb3r_bat)
- [Instagram](https://www.instagram.com/kyb3r_bat/)
- [GitHub](https://www.github.com/kyb3r-bat)
- [ALL](https://allmylinks.com/kyb3r-bat)
- [Youtube](https://www.youtube.com/channel/UC9DHO7qi_-bLPquT0MLyyxQ)
<!--- [Page](https://byt3.exe.github.com)-->