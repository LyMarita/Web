Rails.application.routes.draw do

  get 'news' => 'news#index'
resources :categories
end
