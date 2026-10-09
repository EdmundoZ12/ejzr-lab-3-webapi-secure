# Laboratorio 4 - Semgrep

## Objetivo

Realizar un análisis SAST sobre el código Java de la aplicación Spring Boot utilizando Semgrep, identificar hallazgos de seguridad y comprobar el efecto de una corrección.

## Resultado inicial

El primer análisis ejecutó 60 reglas sobre 6 archivos Java.

Resultado:

- Findings: 3
- Blocking findings: 3
- Targets scanned: 6

Entre los hallazgos encontrados se identificó una posible inyección SQL en `ProductController.java`, debido a la concatenación directa del parámetro `name` dentro de la consulta SQL.

También se detectó un posible Cross-Site Scripting (XSS) en `CommentController.java`, debido a la incorporación directa de contenido controlado por el usuario en una cadena HTML.

## Hallazgo corregido

Archivo:

`src/main/java/bo/edu/devsecops/controller/ProductController.java`

Código vulnerable:

```java
String sql = "SELECT id, name, price FROM products WHERE name LIKE '%" + name + "%'";
return jdbcTemplate.queryForList(sql);