Rails.application.routes.draw do
  resources :ventilator_items
  resources :ventilators
  resources :compressor_items
  resources :compressors
  resources :utility_items
  resources :utilities
  resources :thermal_production_items
  resources :thermal_productions
  resources :transformer_items
  resources :transformers
  resources :energies
  resources :produced_energies
  resources :acquired_energies
  resources :finished_products
  resources :walking_hours
  resources :raw_material_items
  resources :raw_materials
  resources :technical_data
  resources :companies

  resources :step_by_step

  get 'welcome/index'

  get 'welcome/test'

  root 'welcome#index'

  devise_for :admins


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
