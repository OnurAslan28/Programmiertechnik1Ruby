class Student

  attr_reader :matrikelnummer, :alter
  attr_writer :alter

  def initialize
    @name = "Aresh"
    @alter = 37
    @matrikelnummer = 255252
  end


  def ausgabe
    "ätschhh"
  end

  def name
    @name.clone
  end

end


