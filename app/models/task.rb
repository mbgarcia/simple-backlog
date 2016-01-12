class Task < ActiveRecord::Base

	TASK_TYPES=[EVOLUTIVA="evolutiva", CORRETIVA="corretiva"]
	STATUS=[TO_DO="não iniciada", DOING="em andamento", DONE="pronto", PREVENTED="impedido"]

	validates :task_type, :status, :mantis, :description, presence: true


	def status_value(status_name)
		status = nil
	    case status_name
	      when "não iniciada" then
	        status = STATUS::TO_DO
	      when "em andamento" then
	        status = STATUS::DOING
	      when "pronto" then
	        status = STATUS::DONE
	      else
	        status = STATUS::PREVENTED
	    end
	    status
	end
end
