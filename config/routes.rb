Rails.application.routes.draw do

  get 'hello/index' => 'hello#index'
  root 'hello#index' 

end
