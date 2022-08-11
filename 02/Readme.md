4. **Problema propuesto** 
   
Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 

>**SOLUCION.** 
>
>1. Identificar las medidas de seguridad a implementarse. 
>   Se debe modificar los permisos del archivo con la finalidad de restringir su acceso
>   primero revisar los permisos del archivo con los que cuenta el o los archivos a restringir
>2. Identificar el tipo de usuarios para quienes los permisos >serán cambiados. 
>   Group y Others
>3. Identificar el tipo de permiso que necesita ser cambiado.
>   lectura, escritura y de ser el caso tambien ejecucion retirarlo
>   chmod go= nombre_archivo(s)
>   chmod go= /home/Lista_Precios
>4. Verificar los permisos de acceso al archivo.
>   deberiamos tener el siguiente resultado con el archivo o archivos a proteger
>   ls -ll nombre_archivo(s)
>   ls -ll /home/Lista_Precios
>   -rw-------