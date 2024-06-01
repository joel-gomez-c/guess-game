#!/bin/bash

# Función para contar los archivos en el directorio actual
function count_files {
    local file_count=$(ls -1 | wc -l)
    echo $file_count
}

# Función para solicitar al usuario una adivinanza
function prompt_guess {
    read -p "Adivina cuántos archivos hay en el directorio actual: " guess
}

# Obtener el número real de archivos
file_count=$(count_files)

echo "¡Bienvenido al juego de adivinanza!"

# Bucle para solicitar adivinanzas hasta que el usuario acierte
while true; do
    prompt_guess

    # Verificar si la adivinanza es correcta
    if [[ $guess -eq $file_count ]]; then
        echo "¡Felicidades! ¡Has adivinado el número correcto de archivos!"
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Demasiado bajo. Intenta de nuevo."
    else
        echo "Demasiado alto. Intenta de nuevo."
    fi
done
