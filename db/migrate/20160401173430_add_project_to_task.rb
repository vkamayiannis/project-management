class AddProjectToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :project_id, :reference
  end
end
