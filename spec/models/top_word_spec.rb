require 'spec_helper'

describe TopWord do

	it { should respond_to(:word) }
  it { should respond_to(:count) }

	context "#self.raw_data" do
		it "should scrape the raw data from the gettysburg address website" do
			TopWord.raw_data.split(" ").first.should == "\"Fourscore"
			TopWord.raw_data.split(" ").last.should == "earth.\""
		end
	end

	context "#self.four_score" do
		it "should iterate over raw data and store all unique words in db" do
			TopWord.four_score.count.should == 155
		end
	end
end