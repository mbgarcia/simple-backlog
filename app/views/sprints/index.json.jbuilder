json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :number, :started_on, :finished_on, :team_id
  json.url sprint_url(sprint, format: :json)
end
