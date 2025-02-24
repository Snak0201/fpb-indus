require 'rails_helper'

RSpec.describe "sum" do
  describe "plus" do
    context "when 1 + 1" do
      subject { 1 + 1 }

      it { is_expected.to eq 2 }
    end
  end

  describe "minus" do
    context "when 1 - 1" do
      subject { 1 - 1 }

      it { is_expected.to eq 0 }
    end
  end
end
