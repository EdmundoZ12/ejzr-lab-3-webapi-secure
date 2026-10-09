# Laboratorio 4 - Trivy Images

## Objetivo

Analizar vulnerabilidades conocidas en imágenes Docker mediante Trivy y comparar una imagen antigua con una alternativa más actual.

## Imagen inicial

Se analizó:

`nginx:1.24.0`

El Quality Gate configurado para vulnerabilidades HIGH y CRITICAL produjo:

- HIGH: 177
- CRITICAL: 17
- Total HIGH/CRITICAL: 194

El control utilizó `--exit-code 1`, por lo que la presencia de vulnerabilidades HIGH o CRITICAL provoca el fallo del análisis.

## Hallazgos representativos

Entre los hallazgos se identificaron vulnerabilidades con versión corregida disponible.

Ejemplo:

- CVE: CVE-2024-45491
- Paquete: libexpat1
- Severidad: CRITICAL
- Versión instalada: 2.2.10-2+deb11u5
- Versión corregida: 2.2.10-2+deb11u6

También se observaron vulnerabilidades HIGH en paquetes del sistema como libc6 y e2fsprogs.

## Comparación

Se comparó la imagen anterior con:

`nginx:stable`

Resultado:

### nginx:1.24.0

- HIGH: 177
- CRITICAL: 17

### nginx:stable

- HIGH: 69
- CRITICAL: 1

## Interpretación

La actualización de la imagen redujo significativamente la cantidad de vulnerabilidades HIGH y CRITICAL.

Sin embargo, la imagen `stable` todavía presentó vulnerabilidades, por lo que utilizar una etiqueta más reciente no garantiza por sí sola una imagen libre de riesgos.

## Conclusión

Trivy permitió identificar vulnerabilidades conocidas dentro de una imagen Docker y aplicar un criterio de bloqueo basado en severidad.

La comparación mostró una reducción importante de vulnerabilidades al utilizar una imagen más reciente.