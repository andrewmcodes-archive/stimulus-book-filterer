# frozen_string_literal: true

Rails.application.routes.draw do
  root 'books#index'

  resources :books
  post 'books_filter', action: :index, controller: 'books_filter'
end
