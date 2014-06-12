class TeasController < ApplicationController

  def index
    @tea = Tea.new
    @teas = Tea.all
  end

  def create
    @tea = Tea.new(tea_params)
    if @tea.save
      redirect_to teas_path
    else
      render :index
    end
  end

  private
  def tea_params
    params.require(:tea).permit(:name, :category)
  end
end