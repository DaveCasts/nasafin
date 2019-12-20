require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module NasaIvlApiClient
  BASE_URL = "https://images-api.nasa.gov"

  def self.search(user_input)
    uri = URI( BASE_URL + "/search" )
    params = { :q => user_input }
    uri.query = URI.encode_www_form(params)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request_to_nasa_api = Net::HTTP::Get.new(uri)
    response = http.request(request_to_nasa_api)
    response_hash = JSON.parse(response.read_body)
  end
end

# def self.search(search)
#   if search
#     find(:all, conditions:['name LIKE ?', "%#{search}%"])
#   else
#     find(:all)
#   end
# end

#p NasaIvlApiClient.search("venus")