require 'rails_helper'

RSpec.describe StaticPagesController, type: :request do
  describe "GET #home" do
    subject { get root_path }

    it { is_expected.to eq 200 }
  end
end
