class Planet
  attr_accessor :name, :color, :export, :moons, :inhabited

  def initialize(name, color, export, moons, inhabited)
    @name = name
    @color = color
    @export = export
    @moons = moons
    @inhabited = inhabited
  end
end
