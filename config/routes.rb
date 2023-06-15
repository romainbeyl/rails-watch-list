Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  get 'lists/index'
  get 'lists/new'
  get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: %i[create show new] do
    resources :bookmarks, only: %i[create delete new]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
