class RepliesController < ApplicationController

  def create
    if Reply.find_by_user_id_and_spotfix_id(params[:user_id], params[:spotfix_id])
      render text: 'Already responded for this spotfix' and return
    end
    if User.find_by_id(params[:user_id]) && Spotfix.find_by_id(params[:spotfix_id])
      reply = Reply.new(request.request_parameters)
      render text: 'Successfully registered a response' and return if reply.save
    end
    render text: 'Invalid user or spotfix', status: :bad_request
  end

end
