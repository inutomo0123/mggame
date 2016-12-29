class Decision::ZairyoukounyuuController < ApplicationController

  def new
    markets = Market.all

    @object = Decision::Zairyoukounyuu.new(entry_id: current_entry.id)

    markets.each do |market|
      @object.details.build({
        market_id: market.id,
        price: market.material_price,
        quantity: 0,
        amount: 0,
      })

    end


    p @object

  end

end
