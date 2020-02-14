class HeroinePowerController < ApplicationController
  def new
    @heroine_power = HeroinePower.new
  end

  def create
    @heroine_power = HeroinePower.new(heroine_power_params)
    
    if @heroine_power.save
      flash[:message] = "Heroine Created!"
      redirect_to @heroine_power.name
    else
      flash[:message] = @heroine_power.errors.full_messages[0]
      render :new
    end
  end

  def heroine_power_params
    params.require(:heroine_power).permit(:heroine_id, :power_id)
  end


end
