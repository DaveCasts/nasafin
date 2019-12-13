require 'uri'
require 'net/http'
require 'openssl'
module NasaPicsHelper

  def self.apod_show()
    p ENV['NASA_API_KEY']
    p "https://api.nasa.gov/planetary/apod?api_key=#ENV['NASA_API_KEY']"
    uri = URI("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request_to_nasa_api = Net::HTTP::Get.new(uri)
    response = http.request(request_to_nasa_api)
    #JSON.parse request_to_nasa_api
    puts response.read_body
    response.read_body
  end
end

# nasa_api = NasaApi.new()
# p nasa_api.apod_show
