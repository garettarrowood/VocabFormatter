Rails.application.routes.draw do
  
  root 'application#new'

  post '/format', to: 'application#create'

end
