class Task < ActiveRecord::Base
	belongs_to :project
	validates_presence_of :title, :summary, :due_date, :project_id 
	self.per_page = 5
end
