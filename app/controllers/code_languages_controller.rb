class CodeLanguagesController < ApplicationController
  unloadable
  def create
    newcat = CodeLanguage.new(params[:code_language])
    
    if newcat and newcat.save
      flash[:notice] = "#{newcat.name} was successfully created."
    else
      flash[:error] = 'Cannot create that category'
    end
    redirect_to :controller => :codebooks, :action => 'admin'
  end
end
