require 'spec_helper'

describe "visiting /motioner" do
  before do
    visit "/motioner"
  end
  it "should have a body" do
    page.should have_css('body')
  end
end