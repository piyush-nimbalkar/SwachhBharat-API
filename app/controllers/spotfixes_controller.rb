class SpotfixesController < ApplicationController

  def create
    @spotfix = Spotfix.new(request.request_parameters)
    render :show, status: 201 and return if @spotfix.save
    render :error, status: :unprocessable_entity
  end

end
