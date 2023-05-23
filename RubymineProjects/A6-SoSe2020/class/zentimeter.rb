require_relative '../modules/laengen_mass'

class Zentimeter
  include LaengenMass

  def faktor
    return 10
  end

  def symbol
    " cm"
  end

end