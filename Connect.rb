# Server 
require "socket"
s0 = TCPServer.open(12345)
s = s0.accept
while(l = s.gets)do
puts l
end 
s.close
s0.close
#
# if you wan to make a chat program 
# Enter from the keyword --> networl --> 
# while(l = gets) do 
# s.puts l
# l1 = s.gets
#puts l1 
