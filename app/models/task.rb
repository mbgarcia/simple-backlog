class Task < ActiveRecord::Base

	TASK_TYPES=[EVOLUTIVA="evolutiva", CORRETIVA="corretiva"]
	STATUS=[TO_DO="não iniciada", DOING="em andamento", DONE="pronto", PREVENTED="impedido"]

	validates :task_type, :status, :mantis, :description, presence: true
end
