require 'rails_helper'

RSpec.describe Admins::StaticPagesController, type: :system do
  describe "GET /index" do
    it "returns http success" do
      visit admin_root_path
      expect(page).to have_content("ログイン")
    end
  end
end
