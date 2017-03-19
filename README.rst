.. _dcanoh: http://github.com/lidesdk/repos/dcanoh.rst>`.


lide.http
=========

HTTP and HTTPS requests support.

===============  ==========  ==============
  platform          arch        version
===============  ==========  ==============
  ``Windows``      ``x86``      ``0.0.01``
===============  ==========  ==============

Es importante contar con funciones que nos permitan comunicarnos con los estandares de internet, por
eso he creado esta libreria, es necesario poder comunicarnos con las REST API de diferentes servicios
a nivel mundial y también para poder asegurar una completa integracion entre el framework lide y la 
programacion web.

La librería lide.http nos permite hacer requests http (post, get, put) desde lua. He añadido algunas 
funciones adicionales que considero de bastante utilidad.


instalacion
^^^^^^^^^^^

Para instalar ésta libreria recomiendo utilizar la linea de comandos de lide, usando ``lide install``.

*Así todas las dependencias se instalarán automaticamente:*

``$ lide install lide.http``

Recuerde que **lide.http** hace parte del repositorio de desarrollo: dcanoh_


dependencias
^^^^^^^^^^^^

Las siguientes dependencias son necesarias para poder ejecutar la librería:

- ``socket``
- ``ssl``
- ``ltn12``
- ``cjson``
- ``xml``
- ``md5``
- ``base6``


lua API
^^^^^^^

http.download ( url, dest )
	Download the given "url" to "dest" path to the system.

http.test_connection ( url )
	Test HTTP or HTTPS connection.