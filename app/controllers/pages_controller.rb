class PagesController < ApplicationController
    def show
      @members=Profile.all
      @partners=Partner.all
      @events=Event.first(3)
      render template: "pages/#{params[:page]}"
    end

end
