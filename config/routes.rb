Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}, :skip => [:registrations]

  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  devise_scope :user do
    get "/sign_in",  :to => "devise/sessions#new"
    get "/sign_up",  :to => "devise/registrations#new"
  end

  post 'resolution', to: 'static#resolution'
  get 'take_question', to: 'static#take_question'
  root to: 'static#home'
end
