find Material -type f -name "*.typ" -print |
while IFS= read -r archivo; do
    # Si está dentro de Apuntes, comprobar que está directamente dentro
    if [[ "$archivo" == **/Apuntes/** ]]; then
        continue
    fi

    echo "Compilando: $archivo"
    typst compile "$archivo" --root . --input show-solutions=true ||
        echo "Error en $archivo, continuando..."
done