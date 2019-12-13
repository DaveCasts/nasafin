require 'rails_helper'

RSpec.describe NasaPicsController, type: :controller do

  describe "nasa_pics#show" do
    it "should successfully show apod on the page" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
