require_relative 'Human'

class Samurai < Human
    @@total_samurai = 0
    def initialize
        super
        @health = 200
        @@total_samurai += 1
    end

    def death_blow(obj)
        obj.health -= obj.health
        puts "Your target crumbles at your feet."
        self
    end

    def meditate
        self.health = 200
        self
    end

    def self.how_many
        puts @@total_samurai
    end
end
