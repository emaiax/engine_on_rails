require 'spec_helper'

module EngineOnRails
  describe Post do
    let(:post) { create(:engine_on_rails_post) }

    it { post.should be_valid }

    context "validations" do
      it { should validate_presence_of :title }
      it { should validate_presence_of :content }
    end
  end
end
