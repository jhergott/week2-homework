Rails.application.routes.draw do
  
  #challenge 1
  get '/greet' => 'greet#greeting'

  #challenge 2
  get '/contact' => 'contact#submit'
  get '/contact_submitted' => 'contact_submitted#names'

  #challenge 3
  get '/rps' => 'rps#play'
  get '/rps_play' => 'rps_play#outcome'

  #challenge 4
  get '/dice' => 'dice#start'
  get '/dice/opening_roll' => 'dice#roll'
  get '/dice/rolling' => 'dice#mid_roll'

end
