#!/usr/bin/env ruby

require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'

%w[get head post put delete options patch].each do |method|
  send method, '/*' do
    "#{request.ip} #{request.request_method} #{request.url} - : #{request.params}\n"
  end
end
