require_relative 'Mammal'

class Dog < Mammal
    def check_health
        self.display_health
    end

    def pet
        self.health += 5
        self
    end

    def walk
        self.health -= 1
        self
    end

    def run
        self.health -= 10
        self
    end
end

doggo = Dog.new()
doggo.walk.walk.walk.run.run.pet.check_health