# controllers/selfies_controller.rb
class SelfiesController < ApplicationController

  def index
    @selfies = Selfy.all
  end

  def create
    @selfy = Selfy.create(s_params)
  end

  private
  def s_params
    params.require(:selfy).permit(:title, :description)
  end

end
