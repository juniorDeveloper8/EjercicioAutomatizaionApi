Ejercicio de Pruebas Automatizadas API

Este proyecto contiene pruebas automatizadas para la API utilizando Karate.

Prerequisitos

Antes de ejecutar las pruebas, asegúrate de tener configurado lo siguiente en tu máquina local:

- Sistema Operativo: Windows 10
- IDE: IntelliJ IDEA versión 2023.1
- Maven: versión 3.9.8 (debe estar en la variable de entorno)
- JDK: versión 17 (debe estar en la variable de entorno)
- Karate: Se recomienda utilizar la versión especificada en el pom.xml

Comandos de Instalación

Para instalar las dependencias necesarias, ejecuta los siguientes comandos:

1. Instalar dependencias del proyecto (Solo si es nesesario):
   mvn install -DskipTests

Instrucciones para Ejecutar los Tests

1. Accede al archivo de prueba principal:
   Navega a la ruta del archivo ApiTest.java:
   C:\Users\rober\Desktop\work\veremos\Ejemplos\src\test\java\api\ApiTest.java

   Nota: Si encuentras problemas con el usuario planteado en el archivo signup.feature:
       - Verifica que los datos del usuario en el archivo de características sean correctos.
       - Asegúrate de que el sistema al que estás probando esté accesible y funcionando correctamente.
       - Revisa los logs para detalles sobre el error específico y realiza las correcciones necesarias en los datos del usuario o en el entorno de prueba.

2. Diríjase al archivo signup.feature:
   C:\Users\rober\Desktop\work\veremos\Ejemplos\src\test\java\api\demoblaze\signup.feature

 Para ejecutar pruebas con diferentes usuarios:
    1. Abre el archivo signup.feature:
        C:\Users\rober\Desktop\work\veremos\Ejemplos\src\test\java\api\demoblaze\signup.feature
    2. En la sección de "Examples" del archivo `signup.feature`, descomenta la fila correspondiente al usuario que deseas probar. Comenta las filas de otros usuarios si es necesario.
    3. Guarda los cambios y vuelve a ejecutar el archivo.

    Alternativamente, si deseas ejecutar pruebas con todos los usuarios de manera aleatoria o secuencial:
    - Asegúrate de descomentar las filas necesarias en la sección "Examples".
    - Karate ejecutará todos los ejemplos proporcionados en la sección "Examples" de forma secuencial.

3. Repetición de la Ejecución con otro Usuario:
   Si la primera ejecución se realizó correctamente y se creó el usuario, procede a ejecutar la prueba con el segundo usuario, el cual está comentado en el archivo.

4. Visualización del Reporte:
   Revisa el reporte generado en la carpeta target/karate-reports y selecciona el archivo HTML correspondiente al reporte ejecutado.
   Alternativamente, consulta los logs de la ejecución para acceder a la URL .html y visualizar los resultados de la ejecución.

Información Adicional

- Ejecución en Paralelo: La ejecución de las pruebas se llevará a cabo en paralelo en ambos servicios para optimizar el proceso.
- Configuración Adicional: Si necesitas configurar algún parámetro adicional o entorno, consulta la documentación específica del proyecto o los archivos de configuración.

Para más detalles sobre cómo personalizar o configurar el entorno de prueba, consulta la documentación de Karate y Maven en sus respectivos sitios web.

Para más información sobre cómo gestionar tu repositorio, consulta la documentación de GitHub sobre README.
