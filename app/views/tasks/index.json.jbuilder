json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :summary, :due_date
  json.url task_url(task, format: :json)
end
