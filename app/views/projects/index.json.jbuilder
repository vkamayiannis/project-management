json.array!(@projects) do |project|
  json.extract! project, :id, :description
  json.url project_url(project, format: :json)
end
