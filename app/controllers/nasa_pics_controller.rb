class NasaPicsController < ApplicationController

  def show
    #@nasa_show = {}
    @nasa_show = NasaPicsHelper.apod_show()
    # p @nasa_show
    # @media_type_is_video = @nasa_show['media_type'].eql?('video')
  end
end
