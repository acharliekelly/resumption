require 'rails_helper'

RSpec.describe "SectionLayouts", type: :request do
  describe "GET /section_layouts" do
    it "works! (now write some real specs)" do
      get section_layouts_path
      expect(response).to have_http_status(200)
    end
  end
end
