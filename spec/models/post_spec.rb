require 'spec_helper'

describe Post do
  let(:post) { Post.new }
  it "body should not be empty" do
    post.body = "this is a body"
    post.body.should_not be_empty
  end
end
