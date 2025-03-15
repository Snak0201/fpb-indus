require 'rails_helper'

RSpec.describe Admins::StaticPagesController, type: :request do
  describe "GET #top" do
    subject { get admin_root_path }

    context "without login" do
      it { is_expected.to redirect_to(new_session_path) }
    end

    context "after login" do
      let(:user){ FactoryBot.create(:user) }

      before do
        post session_path, params: { email_address: user.email_address, password: user.password }
      end

      it { is_expected.to eq 200 }
    end
  end
end
