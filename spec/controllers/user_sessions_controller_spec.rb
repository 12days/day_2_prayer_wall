require 'spec_helper'

describe UsersSessionsController do

  describe "GET 'create'" do
    it "returns http success" do
      get 'user'
      response.should be_success
    end
  end

  describe "DELETE 'destroy'" do
    it "returns http success" do
      get 'user'
      response.should be_success
    end
  end

end
