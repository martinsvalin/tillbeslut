require 'spec_helper'

describe "proposals index page" do
  context "at /motioner" do
    it "can be reached" do
      visit '/motioner'
      page.should have_content('Motioner')
    end
  end

  context "at /proposals" do
    before { visit '/proposals' }
    it "can be reached" do
      page.should have_content('Motioner')
    end

    context "with no proposals" do
      it "tells us there are no proposals" do
        page.should have_content('Inga motioner')
      end
    end
  end
end