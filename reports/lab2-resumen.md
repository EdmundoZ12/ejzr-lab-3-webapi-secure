# Laboratorio 4 - OWASP ZAP

## Objetivo

Ejecutar un análisis DAST baseline sobre OWASP Juice Shop utilizando OWASP ZAP y revisar las alertas generadas mediante análisis pasivo.

## Entorno analizado

La aplicación utilizada como objetivo fue OWASP Juice Shop ejecutada localmente mediante Docker.

URL analizada:

http://juice-shop:3000

El contenedor fue expuesto localmente en:

http://localhost:3000

## Resultado del análisis

El reporte generado por OWASP ZAP presentó los siguientes resultados:

- Alertas High: 0
- Alertas Medium: 2
- Alertas Low: 5
- Alertas Informational: 4
- Falsos positivos: 0

El análisis ejecutado corresponde al modo baseline de ZAP, por lo que realiza principalmente exploración y análisis pasivo de las respuestas observadas.

## Interpretación

Las alertas encontradas muestran configuraciones o comportamientos que pueden requerir revisión desde el punto de vista de seguridad.

No se detectaron alertas clasificadas como High en esta ejecución.

Las alertas Medium y Low deben revisarse individualmente para determinar si representan un riesgo aplicable al entorno analizado.

## Limitaciones

El baseline de ZAP no representa un escaneo activo completo y puede no cubrir todas las rutas, funcionalidades o vulnerabilidades de una aplicación SPA.

Por este motivo, la ausencia de alertas High no implica que la aplicación se encuentre libre de vulnerabilidades.

## Conclusión

La ejecución permitió comprobar el uso de OWASP ZAP como herramienta DAST para analizar una aplicación web en ejecución y generar un reporte con alertas clasificadas por nivel de riesgo.