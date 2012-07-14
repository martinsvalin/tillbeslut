require 'spec_helper'

describe "proposals index page" do
  it "can be reached" do
    visit '/motioner'
    page.should have_content('Motioner')
  end

  it "can be reached" do
    visit '/proposals'
    page.should have_content('Motioner')
  end

  context "with no proposals" do
    it "tells us there are no proposals" do
      visit '/proposals'
      page.should have_content('Inga motioner')
    end
  end

  context "with a couple of proposals" do
    before do
      FactoryGirl.create(:proposal, number: '1.1')
      FactoryGirl.create(:proposal, number: '1.2')
      visit '/proposals'
    end

    it "shows a numbered list of proposals" do
      page.should have_content('Motion 1.1')
      page.should have_content('Motion 1.2')
    end
  end
end