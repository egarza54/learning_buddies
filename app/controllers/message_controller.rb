class MessageController < ApplicationController
	def index
		@messages = Message.all
	end

	def create
		@message = Message.create(message_params)		
		@assignment = Assignment.find(@message.assignment_id)
		redirect_to assignment_path(@assignment)
	end

	private

	def message_params
    params.require(:message).permit(:content, :assignment_id)
  end
end
