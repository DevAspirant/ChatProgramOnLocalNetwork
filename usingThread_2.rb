
require "thread"
require "socket"
# this is for client  
# take a server connection 
server_1 = TCPServer.open(12345)
#socket = TCPSocket.open("localhost",12345)
# take a messge form the server 

makeAMessage = server_1.accept
transmit = Thread.new {
while (len = gets) do 
# 2: fill it by your self m
makeAMessage.puts len 
end 
}
receive = Thread.new {
while (len = makeAMessage.gets) do 
puts len 
end 
}
transmit.join 
 


