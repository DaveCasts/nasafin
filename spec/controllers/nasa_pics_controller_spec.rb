require 'rails_helper'

RSpec.describe NasaPicsController, type: :controller do

  describe "nasa_pics#index" do
    it "should successfully show apod on the index page" do
      get :index
      expect(response).to have_http_status(:success)
    end

    # it "should show error message if apod cannot be shown" do
    #   get :index
    #   expect(response).to have_http_status(503)
    # end
  end
end
