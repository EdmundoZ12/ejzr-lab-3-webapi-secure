# Laboratorio 4 - SBOM y SCA

## Objetivo

Generar un SBOM de las dependencias Maven mediante CycloneDX y analizarlo con Trivy para identificar vulnerabilidades conocidas.

## Resultado inicial

Se generó el archivo `target/bom.json` con CycloneDX y se analizó mediante Trivy.

Resultado inicial:

- Total de vulnerabilidades: 53
- HIGH: 16
- CRITICAL: 9

Entre las dependencias vulnerables se encontraba `commons-text:1.9`.

## Corrección aplicada

Se actualizó:

`commons-text:1.9`

a:

`commons-text:1.10.0`

Después se ejecutaron nuevamente las pruebas Maven, se regeneró el SBOM y se repitió el análisis SCA.

## Resultado posterior

- Total de vulnerabilidades: 52
- HIGH: 16
- CRITICAL: 8

El análisis posterior ya no mostró hallazgos asociados a `commons-text`.

## Conclusión

La generación del SBOM permitió inventariar las dependencias de la aplicación y analizar sus vulnerabilidades conocidas.

La actualización de `commons-text` eliminó el hallazgo seleccionado, aunque permanecen otras vulnerabilidades que requieren tratamiento adicional.