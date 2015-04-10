Rails.application.routes.draw do
  
  get '/greet' => 'greet#greeting'
  get '/contact' => 'contact#submit'
  get '/contact_submitted' => 'contact_submitted#names'
  get '/rps' => 'rps#play'
  get '/rps_play' => 'rps_play#outcome'

end
