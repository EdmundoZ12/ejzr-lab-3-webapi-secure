# Laboratorio 4 - Gitleaks

## Objetivo

Detectar posibles secretos expuestos en archivos del proyecto y comprobar la diferencia entre el contenido actual y el historial Git.

## Prueba inicial

Se creó un archivo de demostración con un token ficticio:

`API_TOKEN=DEMO_TOKEN_ABCD1234EFGH5678`

Gitleaks fue ejecutado sobre la carpeta `secret-demo` utilizando una regla personalizada.

Resultado:

- Secretos detectados: 1

El hallazgo correspondió al token ficticio creado específicamente para la práctica.

## Corrección aplicada

El valor fue reemplazado por:

`API_TOKEN=REPLACE_AT_RUNTIME`

Después de repetir el análisis:

- Secretos detectados: 0

## Revisión del historial Git

También se ejecutó Gitleaks sobre el historial completo del repositorio.

Resultado:

- Commits analizados: 27
- Secretos detectados: 0

## Conclusión

Gitleaks permitió detectar correctamente un secreto ficticio dentro de un archivo y verificar su eliminación después de la corrección.

El análisis adicional del historial Git no identificó secretos expuestos en los commits analizados.