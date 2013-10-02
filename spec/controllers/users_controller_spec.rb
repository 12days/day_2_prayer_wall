require 'spec_helper'

describe UsersController do

  describe "GET 'email:string'" do
    it "returns http success" do
      get 'email:string'
      response.should be_success
    end
  end

  describe "GET 'password:password'" do
    it "returns http success" do
      get 'password:password'
      response.should be_success
    end
  end

  describe "GET 'password_confirmation:password'" do
    it "returns http success" do
      get 'password_confirmation:password'
      response.should be_success
    end
  end

end
