#!/bin/bash

# Nome do arquivo de entrada
input_file="HelloDevOpsWorld.md"

# Nome do arquivo de saída
output_file="HelloDevOpsWorld_modified.md"

# Substituir as strings
sed -e 's/UNKNOWN_STUDENT/MARCELO/g' -e 's/UNKNOWN_TEACHER/CAIO_ROSCELLY/g' "$input_file" > "$output_file"

echo "Substituição concluída. O novo arquivo foi salvo como $output_file."