class AssignmentController < ApplicationController

	def index
	end

	def show
		@assignment = Assignment.find(params[:id])
		@instructions = AssignmentType.find_by(id: @assignment.assignment_type_id)
		@student1 = @assignment.students.first
		@student2 = @assignment.students.last
	end

	def update
		@assignment = Assignment.find(params[:id])
		@assignment.update(student_submission)
		redirect_to assignment_path

	end

	private 

	def student_submission
    params.require(:assignment).permit(:submission)
  end

end
