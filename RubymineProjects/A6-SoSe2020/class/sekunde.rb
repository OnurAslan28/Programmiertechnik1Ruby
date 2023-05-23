require_relative '../modules/zeit_groesse'

class Sekunde

  include ZeitGroesse

  def faktor
    1000
  end

  def symbol
    " s"
  end



end