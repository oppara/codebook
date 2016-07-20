class CodeAreasController < ApplicationController
  unloadable
  def create
    attr = params.require(:code_area).permit(:name)
    newcat = CodeArea.new(attr)

    if newcat and newcat.save
      flash[:notice] = "#{newcat.name} was successfully created."
    else
      flash[:error] = 'Cannot create that category'
    end
    redirect_to :controller => :codebooks, :action => 'admin'
  end
end
