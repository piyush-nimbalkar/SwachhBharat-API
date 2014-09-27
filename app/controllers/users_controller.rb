class UsersController < ApplicationController

  def login
    user = User.find_by_email(params[:email])
    render text: 'Successful authentication' and return if user && user.authenticate(params[:password])
    render text: 'Invalid email or password', status: :unauthorized
  end

  def create
    @user = User.new(request.request_parameters)
    render :show, status: 201 and return if @user.save
    render :error, status: :unprocessable_entity
  end

end
