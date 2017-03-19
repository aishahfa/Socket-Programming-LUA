--luasocket 
require('socket')

--server ip address to connect
io.write("Choose server : ");
server = io.read();

--port no to use
io.write("Choose port : ");
port = io.read();

con = socket.connect(server, port);

if con then
	io.write("Successfully connected!\n");
		while true do
			io.write("Send a message : ");
			
			con:send(io.read().."\n");
			reply = con:receive();
			io.write(reply .. "\n");
		end
end
