require 'spec_helper'

describe PostsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    let(:post) { Post.create!(body: "message")}
    it "returns http success" do
      get 'show', :id => post.reload.id
        response.should be_success
        assigns(:post).should eq(post)
    end
  end

  describe "POST 'create'" do
    context 'with valid attributes' do
      it 'creates new post' do
      end
    end

    context 'with invalid attributes' do
      it 'does not create new post' do
      end
    end
  end

  describe "PUT 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "DELETE 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end
