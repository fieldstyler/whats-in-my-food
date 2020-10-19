class FoodsController < ApplicationController

  def index
    @foods = SearchFacade.foods(params[:q])
  end

end
