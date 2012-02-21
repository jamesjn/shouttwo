require 'spec_helper'

describe Shout do

  before :each do
    @shout_params = {:title => "the title", :user_id => 2, :media1_type => "video", :media1_content => "http://youtube/123123", :media2_type => "picture", :media2_content => "http://imgur.com/123123"}
  end

  it "should require a title" do
    @shout_params.delete(:title)
    Shout.new(@shout_params).should_not be_valid
  end

  it "should require a title of less than 50 characters" do
    @shout_params[:title] = "hi" * 26
    Shout.new(@shout_params).should_not be_valid 
  end

  it "should require media type" do
    @shout_params.delete(:media1_type)
    Shout.new(@shout_params).should_not be_valid    
  end

  it "should require media type of video picture or text" do
    @shout_params[:media1_type] = "notcorrect"
    Shout.new(@shout_params).should_not be_valid    
  end

end
