# frozen_string_literal: true

module Topics
  class TasksController < ApplicationController
    def new
      @task = Task.new
      @topic = Topic.find(params[:topic_id])
    end

    def create
      Task.create(task_params)
      redirect_to topic_path(id: params[:topic_id])
    end

    private

    def task_params
      result = params.require(:task).permit(:title, :text)
      result[:user_id] = current_user.id
      result[:topic_id] = params[:topic_id]
      result
    end
  end
end
