#!/usr/bin/env ruby

require 'socket'

BUFFER_SIZE = 1024

socket = UDPSocket.new
#socket.bind('127.0.0.1', 4321)
socket.bind('0.0.0.0', 4321)

loop do
  message, sender = socket.recvfrom(BUFFER_SIZE)

  port = sender[1]
  host = sender[2]

  socket.send(message.upcase, 0, host, port)
end
