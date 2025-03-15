require 'rails_helper'

RSpec.describe "UserFlows", type: :system do
  describe "header" do
    subject { visit root_path }

    context "without authentication" do
      it "has no user flow for admin" do
        subject
        within "header" do
          expect(page).to have_link "ホーム", href: root_path
          expect(page).to have_no_link "管理画面", href: admin_root_path
        end
      end
    end

    context "with authentication" do
      let(:user) { create(:user) }

      before do
        authenticate_with_form(user)
      end

      it "has user flow for admin" do
        subject
        within "header" do
          expect(page).to have_link "ホーム", href: root_path
          expect(page).to have_link "管理画面", href: admin_root_path
        end
      end
    end
  end
end
