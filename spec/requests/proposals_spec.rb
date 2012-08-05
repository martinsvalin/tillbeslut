require 'spec_helper'

describe "proposals index page" do
  it "can be reached at /motioner" do
    visit '/motioner'
    page.should have_content('Motioner')
  end

  it "can be reached at /proposals" do
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
      FactoryGirl.create(:proposal, number: '1.1', header: 'Open data')
      FactoryGirl.create(:proposal, number: '1.2', header: '30h work week')
      visit '/proposals'
    end

    it "shows a numbered list of proposals" do
      page.should have_content('1.1 Open data')
      page.should have_content('1.2 30h work week')
      page.should_not have_content('Inga motioner')
    end
  end
end