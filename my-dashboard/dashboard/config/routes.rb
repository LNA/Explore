Rails.application.routes.draw do
  get 'days/index'

  get 'day/index'

  get 'tasks'  => 'tasks'

  get 'home'   => 'home#create'

end
