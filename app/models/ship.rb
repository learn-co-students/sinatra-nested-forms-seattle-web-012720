class Ship
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name, :type, :booty
    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end

    def self.clear
        @@all = []
    end
end