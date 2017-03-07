Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/hello_url" => "pages#hello_method"
  get "/contact_url" => "pages#contact_method"
  get "/about" => "pages#about"


  get "/fortune" => "pages#fortune"
  get "/lotto" => "pages#lotto"
  get "/count" => "pages#count"

end
