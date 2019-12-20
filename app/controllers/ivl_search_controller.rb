
require_relative "../clients/nasa_ivl_api_client"

class IvlSearchController < ApplicationController

  def search
    @ivl_results = NasaIvlApiClient.search(params[:search])
    render :index, locals: { results: @ivl_results }
  end


  def index

  end

  #.paginate(page: params[:page], per_page: 15)

  private

  def search_params
    params.require(:ivl_search).permit(:search)
  end
end
