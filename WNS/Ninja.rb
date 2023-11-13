require_relative 'Human'

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end

    def steal(obj)
        obj.health -= self.strength
        self.health += 10
    end

    def get_away
        self.health -= 15
        self
    end
end