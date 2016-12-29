require 'pp'

# 生産能力
def productio_capacity(**params)

  # アタッチメント付き小型機械台数
  small_attached = params[:machine_tools][:small] >= params[:machine_tools][:attachment] ?
    params[:machine_tools][:attachment] : params[:machine_tools][:small]

  # アタッチメントなし小型機械台数
  small_non_attached = params[:machine_tools][:small] - small_attached

  # 稼働している機械台数を求める
  available_large = 0
  available_small_attached = 0
  avaliable_small_non_attached = 0

  worker_unassigned = params[:worker]

  if worker_unassigned > 0 then
    available_large = params[:machine_tools][:large] >= worker_unassigned ?
      worker_unassigned : params[:machine_tools][:large]
    worker_unassigned = worker_unassigned - params[:machine_tools][:large]
  end

  if worker_unassigned > 0 then
    available_small_attached = small_attached >= worker_unassigned ?
      worker_unassigned : small_attached
    worker_unassigned = worker_unassigned - small_attached
  end

  if worker_unassigned > 0 then
    avaliable_small_non_attached = small_non_attached >= worker_unassigned ?
      worker_unassigned : samll_non_attached
    worker_unassigned = worker_unassigned - small_non_attached
  end

  p "有効な大型機械 #{available_large}"
  p "有効なアタッチメント付き小型機械 #{available_small_attached}"
  p "有効なアタッチメントなし小型機械 #{avaliable_small_non_attached}"

  # 生産能力の算出
  return (available_large * 4)
    + (available_small_attached * 2)
    + avaliable_small_non_attached
    + params[:pac] ?
      (available_large + available_small_attached + avaliable_small_non_attached) : 0

end

params = {
  machine_tools: {
     large: 2,
     attachment:2,
     small: 2
   } ,
  worker: 4,
  pac:true
}


#p productio_capacity(params)



def sales_ability(**params)
  # 有効な広告を算出
  avalible_adv = params[:saleseman] * 2 >= params[:adv] ?
    params[:adv] : params[:saleseman] * 2

#  p "有効な広告：#{avalible_adv}"

  return params[:saleseman] * 2 + avalible_adv * 2
end

params = {
  adv: 1,
  saleseman: 5
}

#p sales_ability params


def price_competitiveness(**params)
  return params[:rad] * 2
end

params = {
  rad: 4
}

p price_competitiveness(params)
