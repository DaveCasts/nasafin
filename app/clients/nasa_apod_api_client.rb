require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module NasaApodApiClient

  NASA_API_KEY = "?api_key=#{ENV['NASA_API_KEY']}"

  def self.apod_show()
    uri = URI("https://api.nasa.gov/planetary/apod" + NASA_API_KEY)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request_to_nasa_api = Net::HTTP::Get.new(uri)
    response = http.request(request_to_nasa_api)
    response_hash = JSON.parse(response.read_body)
  end
end