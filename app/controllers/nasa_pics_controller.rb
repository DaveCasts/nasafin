
require_relative "../clients/nasa_apod_api_client"
class NasaPicsController < ApplicationController


  def index
    @nasa_index = NasaApodApiClient.apod_show()
    @media_type_is_video = @nasa_index['media_type'].eql?('video')
  end
end
