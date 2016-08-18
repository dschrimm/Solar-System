require_relative 'planet'
require_relative 'solarsystem'

s = SolarSystem.new("Solar System")

m = Planet.new("Mercury", "Purple", "Onions", 23, "Definitely")
v = Planet.new("Venus", "Blue", "Oil", 14, "Not Sure")
e = Planet.new("Earth", "Rainbow", "War", 1, "For Now...")
ma = Planet.new("Mars", "Red", "Ice Cubes", 8, "Soon")

s.add_planet(m)
s.add_planet(v)
s.add_planet(e)
s.add_planet(ma)

# s.print_props
s.learn_planet
