Rails.application.routes.draw do
  
  get '/greet' => 'greet#greeting'

end
