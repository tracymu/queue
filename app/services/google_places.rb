url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=sake+sydney&key=AIzaSyAEqDSYus5W_xVUqe2pqr-Tf9G_sfDuaDI&sensor=false"

require 'net/http'
response = Net::HTTP.get_response(URI.parse(url))

# response.error! unless response.instance_of? Net::HTTPOK

require 'rubygems'
require 'json'

# convert response using 'JSON implementation for Ruby'
result = JSON.parse(response.body)

# grab the response code
puts result["results"][0]


