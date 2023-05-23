require_relative '../modules/zeit_groesse'

class Minute
  include ZeitGroesse
  def faktor
    60000
  end

  def symbol
    " min"
  end
end