# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

use Rack::Cors do
  allow do
    origins 'localhost:3000', '127.0.0.1:3000',
            /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/

    resource '/file/list_all/', :headers => 'x-domain-token'
    resource '/file/at/*',
        :methods => [:get, :post, :delete, :put, :patch, :options, :head],
        :headers => 'x-domain-token',
        :expose  => ['Test-Api'],
        :max_age => 600
  end

  allow do
    origins '*'
    resource '/public/*', :headers => :any, :methods => :get
  end
end
