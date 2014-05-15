class CommentsController < ApplicationController
  def new
  end

  def create
    comment_params = params.require(:comment).permit(:body, :restaurant_id)

    Comment.create(comment_params)

    redirect_to restaurant_path(params[:comment][:restaurant_id])
  end

  def show
  end
end
