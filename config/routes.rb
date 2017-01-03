Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dev', to: 'dev#index'

  namespace :journal do
    resources :urikakekin_nyuukin
  end

  namespace :decision do
    # resources :zairyoukounyuu
    # resources :zairyoukounyuu_detail
    resources :saiyou
  end
end
