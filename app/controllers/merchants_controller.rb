class MerchantsController < ApplicationController
  def index
    @facade = EngineFacade.new.merchants
  end

  # def show
  #   @facade = EngineFacade.new.merchant(params[:id])
  # end
end
