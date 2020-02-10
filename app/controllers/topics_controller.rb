class TopicsController < ApplicationController
  before_action :authenticate_user!

  def index
    @topics = Topic.includes(:user).order(created_at: :desc)
  end

  def new
    @topic = Topic.new
  end

  def create
    Topic.create(topic_params)
    redirect_to topics_path
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)
    redirect_to topics_path
  end

  private

  def topic_params
    result = params.require(:topic).permit(:title, :text)
    result[:user_id] = current_user.id
    result
  end
end
