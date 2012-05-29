require 'spec_helper'

describe "routes for proposals" do
  it "routes /proposals to proposals index" do
    get('/proposals').should route_to "proposals#index"
  end
  it "routes /motioner to proposals#index" do
    get('/motioner').should route_to "proposals#index"
  end
end