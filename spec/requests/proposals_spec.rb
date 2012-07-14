require 'spec_helper'

describe "proposals index page" do
  it "can be reached at /proposals" do
    visit '/proposals'
    page.should have_css('body')
  end

  it "can also be reached at /motioner" do
    visit '/motioner'
    page.should have_css('body')
  end
end