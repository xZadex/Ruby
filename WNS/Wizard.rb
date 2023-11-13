require_relative 'Human'

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        if self.health == 50
            puts "Your health is already full: #{self.health}"
        elsif self.health + 10 >= 50
            self.health = 50
            puts "You heal to full health: #{self.health}"
        else 
            self.health += 10
            puts "Your health is now: #{self.health}"
        end
        self
    end

    def fireball(target)
        target.health -= 20
        puts "You hit your target for 20 damage."
        self
    end
end