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
end
