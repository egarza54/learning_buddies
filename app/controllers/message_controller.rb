class MessageController < ApplicationController
	def index
		@messages = Message.all
	end

	def create
	end

	private

	def message_params
    params.require(:message).permit(:content, :assignment_id)
  end
end
