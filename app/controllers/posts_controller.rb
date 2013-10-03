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
    @post = Post.includes(:comments).find(params[:id])
    @comment = Comment.new
  end

  def destroy
  end

  def update
    @post = Post.find(params[:id])
    @post.comments.build(comment_params)
    @post.save
    redirect_to post_path(@post)
  end

  def pray
    Prayer.find_or_create_by(user_id: current_user.id, post_id: params[:post_id])
    render status: 200
    redirect_to post_path(params[:post_id])
  end

  private

    def post_params
      params.require(:post).permit(:body, :comment_params)
    end

    def comment_params
      params.require(:comment).permit!
    end
end
