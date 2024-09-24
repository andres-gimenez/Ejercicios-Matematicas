

// #set text(
//   font: "Linux Libertine"
// )

Por defecto \

ABCDE
abcde

#set text(
  font: "PT Sans", 
  fallback: false
)
PT Sans \
ABCDE
abcde

#set text(
  font: "Inria Serif",
  fallback: false
)
Inria Serif \
ABCDE
abcde

#set text(
  font: "Noto Sans Arabic",
  fallback: false
)

Noto Sans Arabic \
ABCDE
abcde


#set text(
  font: "OpenDyslexic",
  fallback: false
)

Open Dyslexic \
ABCDE
abcde

// #let scedilla = [Ş]
// #scedilla // S with a cedilla

// #set text(lang: "ro", script: "latn")
// #scedilla // S with a subscript comma

// #set text(lang: "ro", script: "grek")
// #scedilla // S with a cedilla

= Hola qué tal