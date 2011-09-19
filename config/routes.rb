NotSoStealth::Application.routes.draw do
  match 'home'  => 'home#index', :as => :home
  match 'about' => 'home#about', :as => :about

  root :to => "home#index"

	match "*a" => redirect('/') # send all random routes to home
end
