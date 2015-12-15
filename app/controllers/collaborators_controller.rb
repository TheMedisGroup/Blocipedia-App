class CollaboratorsController < ApplicationController

  def create
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = @wiki.collaborators.build(collaborator_params)

    if @collaborator.save
      flash[:notice] = "Collaborator was added."
      redirect_to @wiki
    else
      flash[:error] = "There was an error adding the collaborator."
      render :new
    end
  end

  private

  def collaborator_params
    params.require(:collaborator).permit(:user_id)
  end

end
