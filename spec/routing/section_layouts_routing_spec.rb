require "rails_helper"

RSpec.describe SectionLayoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/section_layouts").to route_to("section_layouts#index")
    end


    it "routes to #show" do
      expect(:get => "/section_layouts/1").to route_to("section_layouts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/section_layouts").to route_to("section_layouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/section_layouts/1").to route_to("section_layouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/section_layouts/1").to route_to("section_layouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/section_layouts/1").to route_to("section_layouts#destroy", :id => "1")
    end

  end
end
