require_relative 'Mammal'

class Lion < Mammal
    def initialize
        super
        @health = 170
    end

    def check_health
        puts "This is a lion"
        display_health
        self
    end

    def fly
        self.health -= 10
        self
    end

    def attack_town
        self.health -= 50
        self
    end

    def eat_humans
        self.health += 20
        self
    end
end

big_lion = Lion.new()
big_lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.check_health