Rails.application.routes.draw do

  get 'todolists/new'

	get 'top' => 'root#top'
	post 'todolists/todolists' => 'todolists#create'
	# resources :todolists

	get 'todolists' => 'todolists#index'

	get 'todolists/:id' => 'todolists#show', as: 'todolist'
	 # .../todolists/1 や .../todolists/3 に該当する

	 get 'todolists/:id/edit' => 'todolists#edit', as:'edit/todolist'
	 patch 'todolists/:id' => 'todolists#update', as:'update_todolist'

	 delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

