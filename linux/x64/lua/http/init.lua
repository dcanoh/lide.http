-- /////////////////////////////////////////////////////////////////////////////////////////////////
-- // Name:        lide/http/init.lua
-- // Purpose:     Initialize Lide Network framework
-- // Author:      Hernan Dario Cano [dario.canohdz@gmail.com]
-- // Created:     2016/10/16
-- // Copyright:   (c) 2016 Hernan D. Cano
-- // License:     MIT License/X11 license
-- /////////////////////////////////////////////////////////////////////////////////////////////////
--
-- GNU/Linux Lua version:   5.1.5
-- Windows x86 Lua version: 5.1.4

--package.cpath = '/datos/Proyectos/lide/http/ourclibs/?.so;' .. package.cpath
--package.path  = '/datos/Proyectos/lide/http/ourlibs/?.lua;' .. package.path

--lide.libs = { network = {} }
--
--lide.libs.network.string         = require("string")
--lide.libs.network.table          = require("table")
--
--lide.libs.network.ltn12			 = require 'ltn12'
--lide.libs.network.mime           = require 'mime'
--
--lide.libs.network.md5    		 = require 'md5'
--lide.libs.network.base64 		 = require 'base64'
--
--lide.libs.network.socket         = require 'socket'
--lide.libs.network.socket.url     = require 'socket.url'
--lide.libs.network.socket.headers = require 'socket.headers'
--
--lide.libs.network.socket.http    = require 'socket.http'
--
--lide.libs.network.ssl            = require 'ssl'
--lide.libs.network.ssl.https      = require 'ssl.https'
--
--lide.libs.network.cjson          = require('cjson')
--lide.libs.network.cjson.safe     = require('cjson.safe')
--
--lide.libs.network.lub            = require 'lub'
--lide.libs.lfs 					 = require 'lfs'
--
--lide.libs.network.xml			 = require 'xml.init'
--
--lide.libs.network.yaml   		 = { core = require 'yaml.core' }
--

local isString = lide.core.base.isstring
local requests = require 'http.requests' 

local http = { get, put, post,
	download, test_connection
}

function http.test_connection ( url )
	isString(url);

	local exec, errm = pcall(requests.get, url)
	if not exec or errm.status_code ~= 200 then
		return false, errm.status
	else
		return errm
	end	
end

function http.download ( url, dest )
	isString(url); isString(dest)
	
	-- check tempfile path
	local file, errm = io.open ( dest, 'w+b');
	if not file then		
		local msg_error = '[lide.http] File error ' .. (  ':' and errm or 'there is a problem in the path of destination file.')
		lide.core.error.lperr (msg_error, 2)
	end

	local connection, errm = http.test_connection(url);

	if connection then
		local response = requests.get(url)
		local file_content = response.text
		local temp_file = dest
		
		file:write(file_content); file:flush();
		file:close()
	else
		local msg_error = '[lide.http] No connection ' .. (  ':' and errm or 'there is a problem in the url.')
		lide.core.error.lperr (msg_error, 2)
	end
end

function http.get( ... )
	return requests.get(...)
end

function http.post( ... )
	return requests.post(...)
end

function http.put( ... )
	return requests.put(...)
end

function http.delete ( ... )
	return requests.delete(...)
end

function http.options ( ... )
	return requests.options(...)
end

function http.head ( ... )
	return requests.head(...)
end

http.HTTPBasicAuth  = requests.HTTPBasicAuth
http.HTTPDigestAuth = requests.HTTPDigestAuth

return http