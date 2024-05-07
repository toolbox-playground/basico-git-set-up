# Nome do arquivo de entrada
$input_file = "HelloDevOpsWorld.md"

# Nome do arquivo de saída
$output_file = "HelloDevOpsWorld_modified.md"

# Substituir as strings
(Get-Content $input_file) -replace "UNKNOWN_STUDENT", "MARCELO" -replace "UNKNOWN_TEACHER", "CAIO_ROSCELLY" | Set-Content $output_file

Write-Host "Substituição concluída. O novo arquivo foi salvo como $output_file."
