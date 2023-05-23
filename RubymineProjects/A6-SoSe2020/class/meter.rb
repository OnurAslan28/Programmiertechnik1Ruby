require_relative "../modules/laengen_mass"

class Meter
  include LaengenMass
  def faktor
    1000
  end

  def symbol
      " m"
  end

end