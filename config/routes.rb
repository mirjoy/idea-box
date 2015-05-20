Rails.application.routes.draw do
	mount MagicLamp::Genie, at: "/magic_lamp" if defined?(MagicLamp)

  root to: "ideas#index"

  resources :ideas, except: :index
end
