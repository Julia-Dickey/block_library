class PagesController < ApplicationController

    def show
      @members=Profile.all
      @partners=Partner.all
      @events=Event.first(3)
      render template: "pages/#{params[:page]}"
      respond_to do |format|
        format.html
        format.json { render json: @geojson }
      end
    end

    @geojson =
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [-122.67803, 45.524822]
      },
      properties: {
        name: 'Starve Ups WHQ',
        address: "220 NW 8th Ave",
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle',
        :'marker-size' => 'medium'
      }
    },
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [-122.58544921875, 45.51686865305553]
      },
      properties: {
        name: 'Starve Ups Bend Headquarters',
        address: "740 NE 3rd St #3",
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle',
        :'marker-size' => 'medium'
      }
    },
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [-123.06644439697266, 44.04242031836441]
      },
      properties: {
        name: 'Starve Ups Eugene Headquarters',
        address: "1290 Oak St",
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle',
        :'marker-size' => 'medium'
      }
    }
end
