class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new.valid?
  end

  def create
    # Heroine.new(heroine_params)
    # if heroine.save
    #   redirect_to heroine_path(heroine.id)
    # else
    # flash[:message] = heroine.error.message
    #   render heroine :new
    # end
  end

  private

def heroine_params

end
end
