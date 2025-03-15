require 'rails_helper'

RSpec.describe SessionsController, type: :request do
  describe "POST #create" do
    let(:user) { create(:user) }
    let(:another_user) { build(:user) }
    subject { post session_path, params: }

    context "with valid user info" do
      let(:params) do
        { email_address: user.email_address, password: user.password }
      end

      it "creates a user session and redirects to root" do
        expect { subject }.to change { user.sessions.count }.by(1)
        expect(subject).to redirect_to(root_path)
      end
    end

    context "with invalid user info" do
      let(:params) do
        { email_address: another_user.email_address, password: another_user.password }
      end

      it "creates no user session and redirects to new session" do
        expect { subject }.to change { user.sessions.count }.by(0)
        expect(subject).to redirect_to(new_session_path)
      end
    end
  end

  describe "DELETE #delete" do
    let(:user) { create(:user) }
    subject { delete session_path }

    before do
      authenticate_with_params(user)
    end

    it "deletes the session and redirect to new session" do
      expect { subject }.to change { user.sessions.count }.by(-1)
      expect(subject).to redirect_to(new_session_path)
    end
  end
end
