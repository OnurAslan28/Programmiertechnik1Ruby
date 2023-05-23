class Garage

  def initialize
    @inventar = []
  end

  def << (auto)
    if auto.instance_of?(Auto)
      @inventar << auto
    else
      raise ArgumentError, "Kein Auto"
    end

  end

  end