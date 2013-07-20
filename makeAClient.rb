#client file  
require "socket"
require "thread"
s = TCPSocket.open("localhost",12345)
while(l = gets) do
s.puts l
end 
s.close
