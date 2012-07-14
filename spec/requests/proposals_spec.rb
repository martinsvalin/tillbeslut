require 'spec_helper'

describe "proposals index page" do
  it "can be reached at /proposals" do
    visit '/proposals'
    page.should have_content('Motioner')
  end

  it "can also be reached at /motioner" do
    visit '/motioner'
    page.should have_content('Motioner')
  end

  context "with no proposals" do
    before { visit '/proposals' }
    it "tells us there are no proposals" do
      page.should have_content('Inga motioner')
    end
  end
end