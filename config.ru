# This file is used by Rack-based servers to start the application.

require "rack"
require "rack/contrib/try_static"


# Build the static site when the app boots
`bundle exec jekyll build -c _config.yml`


# Enable proper HEAD responses
use Rack::Head
# Attempt to serve static HTML files
use Rack::TryStatic,
    :root => "_site",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']


# Serve a 404 page if all else fails
run lambda {|env| 
  [
    404, 
    {'Content-type' => 'text/plain'}, 
    ['Not found']
  ]
}