class Human
    attr_reader :strength, :stealth, :intelligence, :health
    def initialize()
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end

    def attack(target)
        if target.class.ancestors[0].to_s == 'Human'
            target.take_damage(@strength)
        end
        self
    end

    def take_damage(num)
        @health -= num
        self
    end
end

h1 = Human.new()
h2 = Human.new()

h1.attack(h2)
puts h2.health