json.array!(@tasks) do |task|
  json.extract! task, :id, :mantis, :task_type, :description, :status, :estimated_time, :complexity, :skill, :effort_made, :member, :planed, :team_id, :sprint_number
  json.url task_url(task, format: :json)
end
