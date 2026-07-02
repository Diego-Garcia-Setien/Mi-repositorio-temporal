#!/bin/bash

#Primero nos tenemos que descargar el software, podemos hacerlo desde la web o mediante este comando:

#$ wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip

#Hay que descomprimir el archivo y otorgar permisos de ejecución

#$ unzip fastqc_v0.12.1.zip $ cd FastQC/ $ chmod u+x fastqc

#Verificamos que FastQC funciona correctamente con este comando de ayuda:

#$ ./Fastqc -h

#Vamos a crear un directorio donde guardaremos los resultados de FastQC

mkdir -p /home/Archivos_FastQ/Resultados_FastQC

#Vamos a ejecutar el comando FastQC especificando todas las posibles extensiones de los archivos FastQ

fastqc -o /home/Archivos_FastQ/Resultados_FastQC /home/Archivos_FastQ/Raw_FastQ/*.{fastq,fastq.gz,fq,fq.gz}


#Ahora vamos a trabajar con MultiQC

#Creamos el directorio donde guardaremos los resultados de MultiQC

mkdir /home/Archivos_FastQ/Resultados_MultiQC

#Ahora le decimos que aplique el comando multiqc en la carpeta de resultados de fastqc y los guarde en la nueva carpeta

multiqc -o /home/Archivos_FastQ/Resultados_MultiQC /home/Archivos_FastQ/Resultados_FastQC
