Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'login', to:'welcome#login'
  get 'signin', to: 'welcome#signin'
  post 'kontua', to: 'user#kontua'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
