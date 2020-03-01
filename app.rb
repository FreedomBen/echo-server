#!/usr/bin/env ruby

require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'

# request.url         # => 'http://example.com/hello-world?foo=bar'
def response_with_full_url(request)
  "#{request.ip} #{request.request_method} #{request.url} - : #{request.params}\n"
end

# request.fullpath    # => '/hello-world?foo=bar'
def response_with_full_path(request)
  "#{request.ip} #{request.request_method} #{request.fullpath} - : #{request.params}\n"
end

# request.path_info   # => '/hello-world'
def response_with_path_info(request)
  "#{request.ip} #{request.request_method} #{request.path_info} - : #{request.params}\n"
end

%w[get head post put delete options patch].each do |method|
  send method, '/*' do
    response_with_path_info(request)
  end
end
