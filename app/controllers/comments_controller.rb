# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    Comment.create(comment_params)
    redirect_to topic_path(id: params[:topic_id])
  end

  private

  def comment_params
    result = params.require(:comment).permit(:text)
    result[:user_id] = current_user.id
    result[:topic_id] = params[:topic_id]
    result
  end
end
