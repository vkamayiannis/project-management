class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.create(comments_params)
    redirect_to task_path(@task)
  end

  private

  def comments_params
    params.require(:comment).permit(:comment)
  end
end
