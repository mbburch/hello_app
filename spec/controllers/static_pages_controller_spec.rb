require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
      within "title" do
        response.should have_content("Ruby on Rails Tutorial Sample App")
      end
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
      within "title" do
        response.should have_content("Help | Ruby on Rails Tutorial Sample App")
      end
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
      within "title" do
        response.should have_content("About | Ruby on Rails Tutorial Sample App")
      end
    end
  end

end
