find ./Material -type f -name "*.typ" | while read -r archivo; do
    echo "Compilando: $archivo"
    typst compile "$archivo" --root . --input show-solutions=true || echo "Error en $archivo, continuando..."
done