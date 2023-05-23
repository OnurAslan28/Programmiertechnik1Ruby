require_relative '../modules/laengen_mass'

class Kilometer
  include LaengenMass
  def faktor
    return 1000000
  end

  def symbol
    " km"
  end
end

