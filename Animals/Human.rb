require_relative 'Mammal'

class Human < Mammal
    def subclass_method
        breath
    end

    def another_method
        self.eat
    end
end

person = Human.new
person.another_method
puts person.health