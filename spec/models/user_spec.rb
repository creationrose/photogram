require 'rails_helper'

describe User do 
		describe "#email" do
			it "should have an email" do
			test_user = User.new(:email => "") 
			expect(test_user.save).to eq false
	  end
  end	
end