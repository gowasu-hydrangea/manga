Rails.application.routes.draw do
  
  get 'lists/new'
  post 'lists' => 'lists#create'
  # get 'lists/index'
  get 'lists' => 'lists#index'
  
  # 基礎知識学習フェーズ/アプリケーションを完成させよう/4章
  # get 'lists/show'
  get 'lists/:id' => 'lists#show', as: 'list'
  
  # 基礎知識学習フェーズ/アプリケーションを完成させよう/5章
  # get 'lists/edit'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'top' => 'homes#top'
  
end
