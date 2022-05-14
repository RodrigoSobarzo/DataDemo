# DataDemo
Automatic data demo generator

Este programa genera un set de tablas de salida de acuerdo a la configuración de variables que se indica en MainDataGenerator

Las variables están documentadas como parte del mismo programa
Existen configuraciones para cada archivo de salida.
Los archivos de salida se ubican en la carpeta Data y ellos son:
CUSTOMER.csv
PRODUCT.csv
STORE.csv
SALE_HEADER.csv
SALE_DETAIL.csv

Además el program utiliza un grupo de archivos de entrada ubicados en la Carpeta InputData.
categories.csv
cities.csv
names.csv
surnames.csv
vendor.csv

Por ultimo en la carpeta DDL se encuentra un archivo sql que genera un modelo de datos ansi-sql sobre el cual se puede importar los datos generados por el programa.
DATA_MODEL_DDL.sql


