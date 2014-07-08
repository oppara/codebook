  match '/code_documents/search', :controller => 'code_documents', :action => 'search'
  resources :code_documents
  
  resources :code_languages, :only => [:create]
  resources :code_areas, :only => [:create]
  
  resources :codebooks, :only => [:index] do
    collection do
      match 'admin' 
      match 'create_category'
      match 'destroy_category'
      match 'export'
      match 'get_user'
      match 'add_default_enums'      
    end
  end
    
