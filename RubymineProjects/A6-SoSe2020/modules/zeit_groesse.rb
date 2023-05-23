require_relative "einfache_groesse"

module ZeitGroesse
  include EinfacheGroesse

  def von_basis(wert)
    self.class().new(wert / faktor)
  end

  def common_supertype
    ZeitGroesse
  end
end