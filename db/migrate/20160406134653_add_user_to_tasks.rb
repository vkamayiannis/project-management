class AddUserToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :created_by, index: true
  end
end
