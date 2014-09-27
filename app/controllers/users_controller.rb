class UsersController < ApplicationController

  def create
    @user = User.new(request.request_parameters)
    render :show, status: 201 and return if @user.save
    render :error, status: :unprocessable_entity
  end

end
