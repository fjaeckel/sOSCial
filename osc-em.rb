#!/usr/bin/env ruby

require 'rubygems'
require 'pp'
require 'osc-ruby'
require 'osc-ruby/em_server'

require 'em-websocket'

@client = OSC::Client.new( 'localhost', 8000 )


EventMachine.run {

    EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
        ws.onopen {
          puts "WebSocket connection open"

          # publish message to the client
          ws.send "Hello Client"
        }

        ws.onclose { puts "Connection closed" }
        ws.onmessage { |msg|
          puts "Received message: #{msg}"
          path,val,id = msg.split(" ")
          @client.send( OSC::Message.new( path , val.to_i ))
          puts "sent #{path} #{val}"
          element = path.split('/').last
          ws.send "#{element} #{val}"
        }
    end
}
