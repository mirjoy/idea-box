Rails.application.routes.draw do
	mount MagicLamp::Genie, at: "/magic_lamp" if defined?(MagicLamp)

	namespace :api do
		namespace :v1 do
			resources :ideas
		end
	end
	
  root to: "ideas#index"

  resources :ideas, except: :index
end
