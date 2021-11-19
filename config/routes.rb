Rails.application.routes.draw do
  root 'friend_num#home'
  post '/result', to: 'friend_num#result', as: 'friend_num'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
