class PostsController < ApplicationController
  def index

  end

  def create
    Post.create(post_params)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  def update
  end

  private

    def post_params
      params.require(:post).permit(:body)
    end
end
