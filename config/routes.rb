Rails.application.routes.draw do
  get 'posts/index'
  # get '/' => 'home#top'
  get "posts/:id" => "posts#show"
  root 'home#top'
  get 'about' => 'home#about'
  post "home/create" => "home#create", as:"p_create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
