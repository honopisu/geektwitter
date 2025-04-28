Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  get 'tweets' => 'tweets#index' #追記
  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  root 'hello#index'
end


