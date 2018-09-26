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

===============  ==========  ============== ====================================================================================
  platform          arch        version       build status
===============  ==========  ============== ====================================================================================
  ``Windows``      ``x86``      ``0.2``       .. image:: https://ci.appveyor.com/api/projects/status/gp3wb7k28clx6ol0?svg=true
                                                       :target: https://ci.appveyor.com/project/dcanoh/lide-http/branch/package.lide
===============  ==========  ============== ====================================================================================


La librería lide.http nos permite hacer requests http/https (post, get, put, head, delete, etc...) desde lua.


instalacion
^^^^^^^^^^^

Para instalar ésta libreria recomiendo utilizar la linea de comandos de lide, usando ``lide install``.

*Así todas las dependencias se instalarán automaticamente:*

``$ lide install lide.http``



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

Basic usage functions.

http.download ( string Url, string Dest )
	Download the given "url" to "dest" path to the system.

http.test_connection ( string Url )
	Test HTTP or HTTPS connection.


----------------------------------------------------------------------

http requests
-------------

The second argument of a request is a table that can be used to make 
more advanced requests. Any request can be made with either a second 
argument or as a table.

.. code-block:: lua

	table requestData = {
		table data,
		table headers,
		table proxy,
		number timeout,
		table auth, 	--> result of requests.HTTPDigestAuth
		string cookies,
		bool allow_redirects = true,
	}


http.get ( string Url, table requestData )
	El método GET solicita una representación de un recurso específico. 
	Las peticiones que usan el método GET sólo deben recuperar datos.

http.head ( string Url, table requestData )
	El método HEAD pide una respuesta idéntica a la de una petición GET, pero sin el cuerpo de la respuesta.

http.post ( string Url, table requestData )
	El método POST se utiliza para enviar una entidad a un recurso en específico, causando a menudo un cambio en el estado o efectos secundarios en el servidor.

http.put ( string Url, table requestData )
	El modo PUT reemplaza todas las representaciones actuales del recurso de destino con la carga útil de la petición.

http.delete ( string Url, table requestData )
	El método DELETE borra un recurso en específico.

http.connect ( string Url, table requestData )
	El método CONNECT establece un tunel hacia el servidor identificado por el recurso.

http.options ( string Url, table requestData )
	El método OPTIONS es utilizado para describir las opciones de comunicación para el recurso de destino.

http.trace ( string Url, table requestData )
	El método TRACE realiza una prueba de bucle de retorno de mensaje a lo largo de la ruta al recurso de destino.

http.patch ( string Url, table requestData )
	El método PATCH  es utilizado para aplicar modificaciones parciales a un recurso.