Rails.application.routes.draw do
  get '/career' => "career#index"
  get '/transfer' => "transfer#index"
  post '/transfer' => "transfer#index"
  get '/news' => "news#index"
  get '/event' => "event#index"
  get '/about' => "about#index"
  get '/add_news' => "add_news#index"
  post '/add_news' => "add_news#show"

  get '/transfer/:name' => "transfer#show", as: :transfer_show
  get '/career/:name' => "career#show", as: :career_show
  get '/event/:name' => "event#show", as: :event_show
  get '/news/:id' => "news#show", as: :news_show

  get '/coming_soon' => "top#coming_soon"

  get '/login/:id' => "login#show"
  get '/login' => "login#login_form"
  post '/login' => "login#login"
  get '/registar' => "login#new"
  post '/registar' => "login#create"
  get '/logout' => "login#logout"
  
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

