# Definir el nombre del archivo README
README.md: guessinggame.sh
	echo "# Proyecto de Adivinanza" > README.md
	echo "\n" >> README.md
	echo "Fecha y hora de ejecución: $$(date)" >> README.md
	echo "\n" >> README.md
	echo "Número de líneas de código en guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
