Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, :destinations, :posts 
  
  post 'posts/:id/likes', to: "posts#likes"
  
  post 'bloggers/:id/change_age', to: 'bloggers#change_age'
 
end
