  get '/code_documents/search', :controller => 'code_documents', :action => 'search'
  resources :code_documents

  resources :code_languages, :only => [:create]
  resources :code_areas, :only => [:create]

  resources :codebooks, :only => [:index] do
    collection do
      match 'admin', :via => :all
      match 'create_category', :via => :all
      match 'destroy_category', :via => :all
      match 'export', :via => :all
      match 'get_user', :via => :all
      match 'add_default_enums', :via => :all
    end
  end

