require_relative '../spec_helper'
require_relative 'game'

describe Game do
  context LocationHelper do
    it "should allow me to setup a location" do
      #LocationHelper.stub(:get_user_input).and_return("Home")
      allow(LocationHelper).to receive_messages(get_user_input: "Home")
      LocationHelper.location_setup Location.new
      Location.all_names.should include("Home")
    end
  end
end