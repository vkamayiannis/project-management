class Comment < ActiveRecord::Base
  belongs_to :task
  belongs_to :user, primary_key: 'id', foreign_key: 'created_by'
end
