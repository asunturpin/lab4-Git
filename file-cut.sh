#!/bin/bash

# Mi nombre de usuario
username=$(whoami)

# Verificar si el usuario es alumno31
if [ "$username" == "alumno31" ]; then
    # Directorio de entrada y salida
    input_directory="/home/alumno31/lab4"
    output_directory="/home/alumno31/lab4"

    for file in "$input_directory"/Sample*; do
        # Verificar si el archivo es un archivo regular
        if [ -f "$file" ]; then
            # Obtener el nombre del archivo
            filename=$(basename "$file")
            # Nuevo nombre
            new_filename="cut_$filename"

            # Calcular el número de líneas a conservar
            total_lines=$(wc -l < "$file")
            lines=$((total_lines * 31 / 100))

            # Cortar y guardar la parte superior en el directorio de salida
            head -n "$lines" "$file" > "$output_directory/$new_filename"

            echo "Corte de $filename completado. Se han conservado $lines líneas"
        fi
    done

    echo "Operación completada. Se ha aplicado el corte proporcional para alumno3$
else
    echo "Este script está diseñado para el usuario alumno31. No se realizaron op$
fi

