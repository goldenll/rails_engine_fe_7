class MerchantsController < ApplicationController
  def index
    @facade = EngineFacade.new.merchants
  end

  def show
    @merchant_items = EngineFacade.new.merchant(params[:id])
  end
end
