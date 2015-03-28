Rails.application.routes.draw do

  resources :users

	get "/log-in" => "sessions#new"
	post "/log-in" => "sessions#create"
	get "/log-out" => "sessions#destroy", as: :log_out

end





#Manual routes

# match('/', :via => :get, :to => 'users#index')
# match('users', {:via => :get, :to => 'users#index'})
# match('users/new', {:via => :get, :to => 'users#new'})
# match('users', {:via => :post, :to =>'users#create'})
# match('users/:id', {:via => :get, :to => 'users#show'})
# match('users/:id/edit', {:via => :get, :to => 'users#edit'})
# match('users/:id', {:via => [:patch, :put], :to => 'users#update'})
# match('users/:id', {:via => :delete, :to => 'users#destroy'})
# match('users/:user_id/otherclass/new', {:via => :get, :to => 'otherclass#new'})

## NESTED ROUTES
# match('users/:user_id/otherclass', {:via => :post, :to => 'otherclass#create'})
# match('users/:user_id/anotherclass/new', {:via => :get, :to => 'anotherclass#new'})
# match('users/:user_id/anotherclass', {:via => :post, :to => 'anotherclass#create'})
# resources :users, only: [:destroy]  (destroy dependent?)