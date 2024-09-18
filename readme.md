# Ejercicio de Pruebas Automatizadas API

Este proyecto contiene pruebas automatizadas para la API utilizando Karate.

## Prerequisitos

Antes de ejecutar las pruebas, asegúrate de tener configurado lo siguiente en tu máquina local:

- **Sistema Operativo:** Windows 11
- **IDE:** IntelliJ IDEA versión Community 2024
- **Maven:** versión 3.9.8 (debe estar en la variable de entorno)
- **JDK:** versión 17 (debe estar en la variable de entorno)
- **Karate:** Se recomienda utilizar la versión especificada en el `pom.xml`

## Comandos de Instalación

Para instalar las dependencias necesarias, ejecuta los siguientes comandos:

1. Instalar dependencias del proyecto (Solo si es necesario):
   ```markdown
   mvn install -DskipTests
   ```

## Instrucciones para Ejecutar los Tests

1. **Accede al archivo de prueba principal:**
   Navega a la ruta del archivo `ApiTest.java` en `src\test\java\api\ApiTest.java`

**Nota:** Si encuentra problemas con el usuario planteado en el archivo `signup.feature`:

- Cambia el usuario a tu preferencia en:
  ```
  src/test/java/api/demoblaze/template/signup_data.json
  ```
- Verifica que los datos del usuario en el archivo de características sean correctos.
- Asegúrate de que el sistema al que estás probando esté accesible y funcionando correctamente.
- Revisa los logs para detalles sobre el error específico y realiza las correcciones necesarias en los datos del usuario
  o en el entorno de prueba.

2. **Para ejecutar pruebas con diferentes usuarios:**
1. Abre el archivo `signup_data.json`:
   ```
   src/test/java/api/demoblaze/template/signup_data.json
   ```
   Cambia el `"username": "RoberthZambrano456M"` por el usuario de tu preferencia.
2. Guarda los cambios y vuelve a ejecutar el proyecto.

3. **Visualización del Reporte:**
   Revisa el reporte generado durante las pruebas en `\adjuntos\karate-reports\karate-summary.html`

Alternativamente, si ejecutaste el proyecto y deseas ver el nuevo reporte, busca al final de la terminal donde se prueba
el test y busca el enlace o link. También puedes encontrar el reporte en la
carpeta:`\target\karate-reports\karate-sumary.html`

## Información Adicional

- **Ejecución en Paralelo:** La ejecución de las pruebas se llevará a cabo en paralelo en ambos servicios para optimizar
  el proceso.
- **Configuración Adicional:** Si necesitas configurar algún parámetro adicional o entorno, consulta la documentación
  específica del proyecto o los archivos de configuración.

Para más detalles sobre cómo personalizar o configurar el entorno de prueba, consulta la documentación de Karate y Maven
en sus respectivos sitios web.
