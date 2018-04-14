class CommentController < ApplicationController
  def store
    @comment = Comment.new(comment_params)
    if @comment.save
      # broadcast message using ActionCable
      ActionCable.server.broadcast(
        'comments', message: @comment.comment
      )
      # broadcasting messages using pusher
      # Pusher.trigger('comment-channel','new-comment', {
      #  comment: @comment.comment
      # })
    end


    redirect_to '/'
  end


  private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
