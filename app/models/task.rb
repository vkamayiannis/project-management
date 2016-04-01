class Task < ActiveRecord::Base
	validates_presence_of :title, :summary, :due_date
end
