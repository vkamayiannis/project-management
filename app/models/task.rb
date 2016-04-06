class Task < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates_presence_of :title, :summary, :due_date, :project_id
	self.per_page = 5

end
