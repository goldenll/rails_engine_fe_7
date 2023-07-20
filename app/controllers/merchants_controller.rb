class MerchantsController < ApplicationController
  def index
    @facade = EngineFacade.new.merchants
  end

  def show
    require 'pry'; binding.pry
    @merchant = EngineFacade.new.merchant(params[:id])
    # @merchant = facade
  end
end
# (params[:id])