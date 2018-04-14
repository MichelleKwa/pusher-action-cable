Rails.application.routes.draw do
  
  # to server websocket requests
  mount ActionCable.server => '/cable'
  
  post 'comment/store'

  
  root 'welcome#index'
end
