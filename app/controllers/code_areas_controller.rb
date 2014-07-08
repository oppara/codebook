class CodeAreasController < ApplicationController
  unloadable
  def create
    newcat = CodeArea.new(params[:code_area])
    
    if newcat and newcat.save
      flash[:notice] = "#{newcat.name} was successfully created."
    else
      flash[:error] = 'Cannot create that category'
    end
    redirect_to :controller => :codebooks, :action => 'admin'
  end
end
