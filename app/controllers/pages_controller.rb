class PagesController < ApplicationController 



def about
end


def misavisos
@publications = current_user.publications.all

end


end