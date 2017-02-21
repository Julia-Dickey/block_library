class PagesController < ApplicationController
    def show
      @members=Profile.all
      @partners=Partner.all
      render template: "pages/#{params[:page]}"
    end

end
