Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :template do
    collection do
      get 'index'
      # 更多路由
      get 'options_one'
      post 'create_name'
      post 'create_other'
      get 'options_two'
      get 'options_three'
    end
  end
end


