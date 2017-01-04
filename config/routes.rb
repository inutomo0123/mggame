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
    # resources :uriage             # 7 売上
    resources :kashitsukekin      # 8 貸付金
    resources :kikaikougu         # 9 機械工具
    # resources :tounyuuhi          # 10 投入費
    # resources :kanseihi           # 11 完成費
    resources :roumuhi            # 12 労務費
    resources :seizou_keihi       # 13 製造経費
    resources :hanbaihi           # 14 販売費
    resources :ippan_kanrihi      # 15 一般管理費


  end

  namespace :decision do
    # resources :zairyoukounyuu
    # resources :zairyoukounyuu_detail
    resources :saiyou
  end
end
