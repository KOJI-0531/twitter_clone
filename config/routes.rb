Rails.application.routes.draw do
  root 'home#top'
  get 'about' => 'home#about'
  # get 'posts/index'
  # get '/' => 'home#top'
  post "home/create" => "home#create", as:"p_create"
  get "posts/:id/edit" => "posts#edit", as: "p_edit"
  post "posts/:id/update" => "posts#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
