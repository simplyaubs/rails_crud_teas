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

  def show
  @tea = Tea.find(params[:id])
  end

  def edit
    @tea = Tea.find(params[:id])
  end

  def update
    @tea = Tea.find(params[:id])
    @tea.update_attributes!(tea_params)

    redirect_to teas_path
  end

  def destroy
    @tea = Tea.find(params[:id]).delete

    redirect_to teas_path
  end

  private
  def tea_params
    params.require(:tea).permit(:name, :category)
  end
end