require_relative '../modules/zeit_groesse'

class Millisekunde
  include ZeitGroesse
  def faktor
    1
  end

  def symbol
   " ms"
  end
end