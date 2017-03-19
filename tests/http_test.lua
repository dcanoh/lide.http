local http = require 'http.init'
print(http)
url = 'http://speedtest.ftp.otenet.gr/files/test100k.db'

--require 'lub'

if lide.platform.getOSName() == 'Linux' then
	_tmp_file = '/tmp/__readme.rst'
	os.execute 'rm /tmp/__readme.rst'
else
	_tmp_file = '__readme.rst'
	os.execute 'del __readme.rst'
end

io.stdout:writ(e '\n[lide test] - download file '

http.download(url, _tmp_file)

if io.open(_tmp_file) then	
	io.stdout:wr--it(e 'OK]\n'
else
	io.stdout:wr--it(e 'FAILED]\n'
	assert(false)
end

for k, v in pairs( package.path:delim ';' ) do
	print( k, v )
end
