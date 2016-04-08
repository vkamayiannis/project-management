class AddUserToComments < ActiveRecord::Migration
  def change
    add_column :comments, :created_by, :reference
  end
end
