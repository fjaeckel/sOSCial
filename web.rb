#!/usr/bin/env ruby

require 'sinatra'
require 'rubygems'

require 'pp'

get '/' do
  erb :index,
      :locals => {
        :a => "b",
      }
end
