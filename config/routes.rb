Rails.application.routes.draw do
	root 'appointments#index'
	devise_for :users
	get 'users/appointments', to: 'appointments#index'
	resources :doctors do
		resources :appointments
	end
	resources :appointments, except: :index
end
