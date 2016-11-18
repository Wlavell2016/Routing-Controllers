Rails.application.routes.draw do
    root 'pages#welcome'
    get '/welcome' => 'pages#welcome'
    get '/about' => 'pages#about'
    get '/contest'=> 'pages#contest'
    get '/kitten/:size' => 'pages#kitten'
    get '/kittens/:size' => 'pages#kittens', as: 'wolverine'
    get '/secrets/:magic_word' => 'pages#secrets'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
