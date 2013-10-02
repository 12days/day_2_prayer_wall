class PostsController < ApplicationController
  def index
    @posts = Post.last(10)
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to post_path(post)
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
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
