class Decision::ZairyoukounyuuDetailController < ApplicationController
  def new

    market = Market.find(1)

    @zairyoukounyuu_detail = Decision::ZairyoukounyuuDetail.new (
      { market_id: market.id, price: market.material_price } )

  end
end
