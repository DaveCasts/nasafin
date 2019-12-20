Rails.application.routes.draw do

  root "nasa_pics#index"
  resources :ivl_search
  get '/search' => 'ivl_search#search', :as => 'search_page'
end
