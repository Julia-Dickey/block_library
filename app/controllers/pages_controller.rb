class PagesController < ApplicationController
    def show
      @members=Profile.all
      render template: "pages/#{params[:page]}"
    end

end
