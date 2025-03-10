require 'rails_helper'

RSpec.describe StaticPagesController, type: :request do
  describe "GET #home" do
    it "returns http success" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
