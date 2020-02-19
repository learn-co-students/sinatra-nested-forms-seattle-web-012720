require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get ('/') do
      erb :root
    end

    get ('/new') do
      erb :new
    end

    post ('/pirates') do
      
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      # byebug
      @ships = Ship.all
      erb :show
    end

  end
end

