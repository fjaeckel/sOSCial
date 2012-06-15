#!/usr/bin/env ruby

require 'sinatra'
require 'rubygems'

require 'pp'

get '/' do
  erb :index
end

get '/master' do
  erb :master
end
