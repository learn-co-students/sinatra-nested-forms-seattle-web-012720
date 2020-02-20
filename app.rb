require './environment'

module FormsLab
  class App < Sinatra::Base




    get '/' do

        erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do
      @lol = Pirate.new(params["pirate"]["name"],params["pirate"]["weight"],params["pirate"]["height"])
      @you_bot = params["pirate"]["name"]
      @you_sick = params["pirate"]["weight"]
      @you_chill = params["pirate"]["height"]
      @sip = params["pirate"]["ships"].select{|object|object["name"]&& object["type"] && object["booty"]}
      erb :'pirates/show'
      #binding.pry
    end
    


    # code other routes/actions here

  end
end
