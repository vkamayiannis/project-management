class CommentsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.create(comments_params)
    #redirect_to tasks_path
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @task, notice: 'Comment inserted succesfully'}
        format.js
      end
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:comment)
  end
end
