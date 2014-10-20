RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

def translate input

  input.slice(1..input.size) + input[0] + "ay"
end

describe "a thing that translates to Pig Latin" do

  context "words that start with a single consonant" do
    it "turns happy into appyhay" do
      expect(translate("happy")).to eq "appyhay"
      translate("happy").should eq "appyhay"
    end

    it "turn sad into adsay" do
      expect(translate("sad")).to eq "adsay"
    end
  end

  it "turn the into ethay" do
    expect(translate("the")).to eq "ethay"
  end

end






