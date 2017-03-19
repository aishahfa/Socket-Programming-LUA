--include luasocket
require('socket');

--port number used
port = 80;

server = socket.bind('*', port);
io.write("Waiting at door "..port.."\n");

con = server:accept();
io.write("Connection made : ")

while true do
	msg = con:receive();
	
	io.write(msg .. "\n");
	io.write("Your answer : ");
	
	con:send(io.read() .. "\n");
end

io.read();
