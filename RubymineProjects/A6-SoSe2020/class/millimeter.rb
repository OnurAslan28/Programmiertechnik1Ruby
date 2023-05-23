require_relative '../modules/laengen_mass'

class Millimeter
  include LaengenMass
  def faktor
    1
  end

  def symbol
    " mm"
  end

end
