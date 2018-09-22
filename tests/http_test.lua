local lide = require 'lide.base.init'
local http = require 'http.init'

url = 'http://speedtest.ftp.otenet.gr/files/test100k.db'

_tmp_file = '__readme.rst'

io.stdout:write '\n[lide.http.download] - download file '

http.download(url, _tmp_file, function ( dlnow, dltotal, percent )
	-- print percent:
	print (math.floor(percent) .. '%');
	
	-- print downloaded bytes:
	print(dlnow .. ' bytes', dltotal .. ' bytes');
end);

if io.open(_tmp_file) then	
	io.stdout:write '[OK]\n'
else
	io.stdout:write '[FAILED]\n'
	assert(false)
end

io.stdout:write '[lide.http.get]    - http get request  '

response = http.get 'http://httpbin.org/get'

if response then
	-- print response 
	--- print(response.text)
	io.stdout:write '[OK]\n'
end

io.stdout:write '[lide.http.head]   - http head request '

response = http.head 'http://httpbin.org/headers'

if response then
	-- print response headers
	---	table.foreach(response     	 , print)
	---table.foreach(response.headers, print)

	io.stdout:write '[OK]\n'
end

io.stdout:write '[lide.http.post]   - http post request '

response = http.post 'http://httpbin.org/post'

if response then
	-- print response headers	
	---table.foreach(response, print)
	---table.foreach(response.headers, print)

	io.stdout:write '[OK]\n'
end

io.stdout:write '[lide.http.delete] - http delete request '

response = http.delete 'http://httpbin.org/delete'

if response then
	-- print response headers	
	---table.foreach(response, print)
	---table.foreach(response.headers, print)

	io.stdout:write '[OK]\n'
end



assert (false, 'lol')