class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal| animal.species}
    end

    def animal_species
        animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.find{|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select{|zoo| zoo.location == location}
    end
end
