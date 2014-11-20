require 'uri'
require 'net/https'

# Request: Search - Trial Account (https://sync.futuresimple.com/api/v1/search.xml?term=ti)

uri = URI.parse("https://sync.futuresimple.com/api/v1/search.xml?term=ti")
http = Net::HTTP.new(uri.host, uri.port)
http.read_timeout = 30
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
request = Net::HTTP::Get.new(uri.request_uri)

# Headers

request["X-Basecrm-Device-UUID"] = "bfd2dccb-08a3-4436-89a0-13d750e75972"
request["X-PLATFORM-VERSION"] = "8.1"
request["X-CLIENT-VERSION"] = "2.19"
request["X-DEVICE-ID"] = "iPhone7,1"
request["User-Agent"] = "Base/806 CFNetwork/711.1.12 Darwin/14.0.0"
request["Content-Type"] = "application/json"
request["Accept"] = "*/*"
request["Host"] = "sync.futuresimple.com"
request["Connection"] = "keep-alive"
request["X-Pipejump-Auth"] = "<APIKEY>"
request["X-DEVICE-UNIQUE-ID"] = "62CD1218-211A-444E-9696-FFF99F7CDFFF"
request["Accept-Encoding"] = "gzip, deflate"
request["X-Futuresimple-Token"] = "<APIKEY>"
request["Accept-Language"] = "en-US"
request["X-Futuresimple-Api-Token"] = "<APIKEY>"
request["X-CLIENT-TYPE"] = "ios-iphone"

# Send synchronously

response = http.request(request)
