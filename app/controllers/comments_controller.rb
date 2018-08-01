class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @user = current_user
    @comment.user = @user
    if @comment.save
      redirect_to location_crag_path(@comment.crag.location, @comment.crag)
    else
      redirect_to locations_path
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:crag_id, :text)
  end
end
