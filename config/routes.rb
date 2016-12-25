Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :journal do
    resources :urikakekin_nyuukin
  end
end
