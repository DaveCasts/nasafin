require 'rails_helper'

RSpec.describe IvlSearchController, type: :controller do
  describe "ivl_search#search" do
    it "should successfully search the Nasa IVL api" do
      get :search
      expect(response).to have_http_status(:success)
    end
  end

  describe "ivl_search#index" do 
    it "should successfully paginate and check the media type of results" do

      expect(response).to have_http_status(:success)
    end
  end
end
