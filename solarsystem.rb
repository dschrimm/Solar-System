class SolarSystem
  attr_accessor :solarsystem

  def initialize(s)
    @solarsystem = s
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  # def print_props
  #   puts "In the #{ @solarsystem } we have the following beauties: "
  #
  #   @planets.each do |planet|
  #     puts "Planet: #{ planet.name }, Color: #{ planet.color }, Export: #{ planet.export }, Moons: #{ planet.moons }, Inhabited? #{ planet.inhabited }"
  #   end
  # end

  def print_props(planet)
    puts "Planet: #{ planet.name }, Color: #{ planet.color }, Export: #{ planet.export }, Moons: #{ planet.moons }, Inhabited? #{ planet.inhabited }"
  end

  def learn_planet
    puts "Which planet do you want to learn about?"
    @planets.each_with_index do |planet, i|
      puts "#{ i + 1 }. #{ planet.name }"
    end
    puts (@planets.length + 1).to_s + ". Exit"
    print "Select a number: "

    selection = gets.chomp.to_i
    until selection == @planets.length + 1
      while selection > @planets.length + 1 || selection < 1
        print "Please choose a valid option: "
        selection = gets.chomp.to_i
      end
      if selection == @planets.length + 1
        break
      end
      print_props(@planets[selection - 1])
      print "Pick another planet or enter #{ @planets.length + 1 } to exit: "
      selection = gets.chomp.to_i
    end
  end
end
