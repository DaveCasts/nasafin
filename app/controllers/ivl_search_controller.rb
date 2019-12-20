
require_relative "../clients/nasa_ivl_api_client"

class IvlSearchController < ApplicationController

  def search
    @ivl_results = NasaIvlApiClient.search(params[:search])
    render :index, locals: { results: @ivl_results }
  end


  def index
    @ivl_index = NasaIvlApiClient.ivl_show()
    @media_type_is_video = @ivl_index['media_type'].eql?('video')
  end


  #(params[:search]).paginate(page: params[:page], per_page: 15)

  #.paginate(page: params[:page], per_page: 15)

  private

  def search_params
    params.require(:ivl_search).permit(:search)
  end
end
