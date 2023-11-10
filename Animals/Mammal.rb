class Mammal
    attr_accessor :health
    def initialize() 
        @health = 150
    end

    def display_health
        puts self.health
        self
    end

    def breath  
        puts "Inhale and exhale"
        self
    end

    def eat
        puts "Yum yum yum"
        self
    end
end
