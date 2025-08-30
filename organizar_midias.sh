#!/bin/bash

# pasta alvo
DIR="/home/riq/Documentos/eve"
cd "$DIR" || exit

# limpa os arquivos de saída antes de começar
> fotos.txt
> videos.txt

for file in *; do
    [ -f "$file" ] || continue

    ext="${file##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    case "$ext" in
        jpg|jpeg|png|webp)
            echo "$file" >> fotos.txt
            ;;
        mp4)
            echo "$file" >> videos.txt
            ;;
    esac
done

echo "Listas criadas: fotos.txt e videos.txt"

