class AssignmentController < ApplicationController

	def index
	end

	def show
		@assignment = Assignment.find(params[:id])
		@instructions = AssignmentType.find_by(id: @assignment.assignment_type_id)
		@student1 = @assignment.students.first
		@student2 = @assignment.students.last
	end

end
