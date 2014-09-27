class SpotfixesController < ApplicationController

  def create
    @spotfix = Spotfix.new(request.request_parameters)
    render :show, status: 201 and return if @spotfix.save
    render :error, status: :unprocessable_entity
  end

  def update
    @spotfix = Spotfix.find_by_id params[:id]
    return head :not_found unless @spotfix
    render :show and return if @spotfix.update_attributes(request.request_parameters)
    render :error, status: :unprocessable_entity
  end

end
