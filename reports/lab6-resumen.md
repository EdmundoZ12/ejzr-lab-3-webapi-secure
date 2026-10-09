# Laboratorio 4 - Conftest

## Objetivo

Aplicar Policy as Code mediante Conftest para validar una configuración Docker Compose.

## Política evaluada

La política definida impide que un servicio Docker utilice:

`privileged: true`

debido a que esta configuración concede privilegios elevados al contenedor.

## Resultado inicial

La configuración inicial utilizaba:

`privileged: true`

Conftest rechazó el archivo con el mensaje:

`Servicio app: privileged=true no permitido`

Resultado:

- Tests: 1
- Passed: 0
- Failures: 1

## Corrección aplicada

Se modificó la configuración a:

`privileged: false`

## Resultado posterior

Después de ejecutar nuevamente Conftest:

- Tests: 1
- Passed: 1
- Failures: 0

## Conclusión

Conftest permitió aplicar automáticamente una política de seguridad sobre un archivo de infraestructura antes de su despliegue. La configuración insegura fue bloqueada y, después de corregirse, la política fue aprobada.