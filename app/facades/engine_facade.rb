class EngineFacade

  def get_merchants
    ReService.new
  end

  def merchants
    json = get_merchants.all_merchants
    json[:data].map do |data|
      Merchant.new(data)
    end
  end

  def merchant(id)
    json = get_merchants.one_merchant(id)
  end

  # def merchant
  #   require 'pry'; binding.pry
  #   json = get_merchants.all_merchants
  #   json[:data].map do |data|
  #     Merchant.new(data)
  #   end
  # end

  # def initialize(id)
  #   @id = id
  # end


  # private

  # def merchant
  #   Merchant.new(merchant_attributes)
  # end

  # def merchant_attributes
  #   @_merchant ||= service.merchant_details(@id)

  #   data = {
  #     id: @_merchant[:id],
  #     name: @_merchant[:name]
  #   }
  # end

  # def get_merchants 
  #   service.all_merchants
  # end

  # def merchants
  #   Merchant.new(service.all_merchants)
  # end

  # def merchant(id)
  #   Merchant.new(service.merchant_details(:id))
  # end

  # def make_merchants

  # end
  # def service 
  #   @_service ||= ReService.new
  # end

end
