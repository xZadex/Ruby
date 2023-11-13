require_relative 'Wizard'
require_relative 'Ninja'
require_relative 'Samurai'

wizard = Wizard.new()
ninja = Ninja.new()
samurai = Samurai.new()

wizard.fireball(ninja)
samurai.death_blow(wizard)