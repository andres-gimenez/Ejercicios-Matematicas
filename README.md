# EjerciciosMatematicas

## Explorta typst 

```bash
typst compile ./Pruebas/pruebahtml.typ --format html --features html prueba.html  --root .
```

```bash
typst compile ./Material/bach_2/9\ Derivadas/Ejercicios-Derivadas.typ --format svg  prueba{0p}-{t}.svg  --root .
```

## Instalar LaTeX

#### Document Viewer:

``` bash
sudo apt-get install texmaker
```

#### TexLive:

``` bash
sudo apt-get install texlive-full
```

#### TexStudio

``` bash
sudo apt-get install texstudio
```

#### Fuentes de linux

``` bash
wget -q https://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts
texlua ./install-getnonfreefonts
sudo getnonfreefonts --sys -a
```

#### Python

``` bash
sudo apt-get install python-pygments
```