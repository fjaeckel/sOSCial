#!/usr/bin/env ruby

require 'rubygems'
require 'pp'
require 'osc-ruby'
require 'osc-ruby/em_server'

require 'em-websocket'

debug = ""

@client = OSC::Client.new( 'localhost', 8000 )

@elements = {};

EventMachine.run {
  @channel = EventMachine::Channel.new

  EventMachine::WebSocket.start(:host => "0.0.0.0", :port => 8080) do |ws|
    ws.onopen {
      puts "WebSocket connection open"

      @sid = @channel.subscribe { |msg| ws.send msg }
      @channel.push "#{@sid} connected!"

      # publish message to the client
      @elements.each do |key,val|
        ws.send "#{key} #{val}"
      end
    }

    ws.onclose { 
      @channel.unsubscribe(@sid)
      puts "Connection closed" 
    }

    ws.onmessage { |msg|
      if debug
        puts "message from #{@sid}: #{msg}"
      end

      # we need the data separately
      path,val = msg.split(" ")

      # send osc message
      if debug 
        puts "sent #{path} #{val.to_i}"
      end
      @client.send( OSC::Message.new( path , val.to_i ))

      # extract the element
      element = path.split('/').last
      if @elements[element] != val || element =~ /^button.*/
        @elements[element] = val
        @channel.push "#{element} #{val}"
        if debug
          puts "sent #{path} #{val} to #{@sid}"
        end
      end
    }
  end
}
