class CommentsController < ApplicationController

  def create
    @entry = Entry.find(params[:entry_id])
    @comment = @entry.comments.build(comment_params)
    @comment.user_id = current_user.id
    redirect_to entry_path(@entry)
    if @entry.save
      flash[:success] = "Comment created"
    else
      flash[:erroe] ="Can not create comment"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
