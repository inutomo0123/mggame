Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dev', to: 'dev#index'

  namespace :journal do
    resources :urikakekin_nyuukin # 1 売掛金入金
    resources :kikai_baikyaku     # 2 機械売却
    resources :eigyougai_shuueki  # 3 営業外収益
    resources :uketori_hokenkin   # 4 受取保険金
    resources :kariirekin         # 5 借入金
    resources :shihonkin          # 6 資本金
    resources :uriage             # 7 売上

  end

  namespace :decision do
    # resources :zairyoukounyuu
    # resources :zairyoukounyuu_detail
    resources :saiyou
  end
end
