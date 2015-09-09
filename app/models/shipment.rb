class Shipment
  attr_accessor :planet, :contents, :crates, :money

  def pilot
    case @planet
    when "Earth"
      "Fry"
    when "Mars"
      "Amy"
    when "Uranus"
      "Bender"
    else
      "Leela"
    end
  end
end
