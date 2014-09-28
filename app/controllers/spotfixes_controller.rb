class SpotfixesController < ApplicationController

  def create
    @spotfix = Spotfix.new(request.request_parameters)
    if params[:owner_id] and not User.find_by_id(params[:owner_id])
      @spotfix.errors[:base].push('Owner is invalid')
    elsif @spotfix.save
      render :show, status: 201 and return
    end
    render :error, status: :unprocessable_entity
  end

  def update
    @spotfix = Spotfix.find_by_id params[:id]
    return head :not_found unless @spotfix
    if params[:owner_id] and not User.find_by_id(params[:owner_id])
      @spotfix.errors[:base].push('Owner is invalid')
    elsif @spotfix.update_attributes(request.request_parameters)
      render :show and return
    end
    render :error, status: :unprocessable_entity
  end

end
