require 'spec_helper'

describe Event do
  context "model validates presence of name & date" do
    
    it "should be valid" do
  		event = build(:event)

  		expect(event).to be_valid	
  	end

  	it "should not be valid" do
  	
  		expect(build(:event, name: "")).not_to be_valid
  		expect(build(:event, date: nil)).not_to be_valid
  	end
  end

  context "model saves record" do
    it "should save record" do
      event = create(:event)

      expect(Event.last).to eq event
    end
  end
end
