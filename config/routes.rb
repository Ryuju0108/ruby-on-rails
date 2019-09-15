Rails.application.routes.draw do

  get 'todolists/new'

	get 'top' => 'root#top'
	post 'todolists/todolists' => 'todolists#create'
	# resources :todolists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
