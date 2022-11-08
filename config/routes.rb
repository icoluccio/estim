# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :plataforma_estims
    resources :paises
    resources :juego_pagos, except: :index
    resources :juegos
    resources :descuentos
    resources :criticos
    resources :criticas
    resources :gratis, except: :index
    resources :fijos, except: :index
    resources :directos, except: :index
    resources :por_juegos_en_estims, except: :index
    resources :usuarios, except: :index
    resources :revistas, except: :index
    resources :critico_pagos, except: :index

    root to: 'plataforma_estims#index'
  end

  resources :criticos, only: %i[index show] do
    member do
      get :criticar_juego
    end
  end
  resources :juegos, only: %i[index show]
  resources :descuentos, only: %i[index show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
