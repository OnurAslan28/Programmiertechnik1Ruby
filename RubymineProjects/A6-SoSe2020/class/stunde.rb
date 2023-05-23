require_relative '../modules/zeit_groesse'

class Stunde
  include ZeitGroesse

  def faktor
    3.6e+6
  end

  def symbol
    " h"
  end
end