require "rails_helper"

RSpec.describe TemplatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/templates").to route_to("templates#index")
    end


    it "routes to #show" do
      expect(:get => "/templates/1").to route_to("templates#show", :id => "1")
    end

  end
end
