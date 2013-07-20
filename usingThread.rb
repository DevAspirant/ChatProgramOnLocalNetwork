# That like include on c language or import on java  
require "thread"
require "socket"
# this is for client 
# if you want to make a chat program between your friend 
# first take the ip for your friend 
# and write that code 
# that code means connect to that computer 
# change that code 
# socket = TCPSocket.open(" ip Address  ",?)
# the TCPSocketMeans : this is a Client 
socket = TCPSocket.open("localhost",12345) 
# take a server connection 
# server_1 = TCPServer.open(12345)
# take a messge form the server 
# takeAMessage = server_1.accept
transmit = Thread.new{
while(l = gets) do 
socket.puts l 
end 
}
receive = Thread.new {
while(l = socket.gets) do 
puts l 
end 
}
transmit.join 
 

