require 'spec_helper'

describe Pizza do
  let(:pizza) {Pizza.new("cheese", "Gooey Cheese")}
  context "#initialize" do
    it "creates a Pizza object" do
      expect(pizza).to be_an_instance_of Pizza
    end

    it "has a name" do
      expect(pizza.name).to eq "cheese"
    end

    it "has a description" do
      expect(pizza.description).to eq "Gooey Cheese"
    end

    it "has a time_baked" do
      expect(pizza.time_baked).to eq 12
    end

    it "has a time_baked default of 0" do
      expect(pizza.time_baked).to eq 0
    end
  end

  context '#set_time'
end
