class WelcomeController < ApplicationController
before_action :authenticate_admin! , only: [:indexadmin]



  def index
  	
    @publications = Publication.all.most_recent.published
  	
  end


  def indexadmin

  	@publications = Publication.in_draft


  end

  



end
