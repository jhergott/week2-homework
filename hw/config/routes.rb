Rails.application.routes.draw do
  
  get '/greet' => 'greet#greeting'
  get '/contact' => 'contact#submit'
  get '/contact_submitted' => 'contact_submitted#names'

end
