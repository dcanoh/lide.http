.. _dcanoh:  http://github.com/lidesdk/repos/dcanoh.rst>`.
.. _ssl:     https://github.com/lidesdk/repos/blob/master/stable/ssl/readme.rst
.. _ltn12:   https://github.com/lidesdk/repos/blob/master/stable/ltn12/readme.rst
.. _cjson:   https://github.com/lidesdk/repos/blob/master/stable/cjson/readme.rst
.. _xml:     https://github.com/lidesdk/repos/blob/master/stable/xml/readme.rst
.. _md5:     https://github.com/lidesdk/repos/blob/master/stable/md5/readme.rst
.. _base64:  https://github.com/lidesdk/base64/readme.rst
.. _luacurl: https://github.com/lidesdk/repos/blob/master/stable/luacurl/readme.rst


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

- socket 2.0.2
- ssl_  0.4
- ltn12_ 1.0.3
- cjson_ 2.1.0
- xml_ 1.1.2
- md5_ 1.1.2
- base64_ 5.1.0
- luacurl_ 1.1.0

lua API
^^^^^^^

http.download ( url, dest )
	Download the given "url" to "dest" path to the system.

http.test_connection ( url )
	Test HTTP or HTTPS connection.