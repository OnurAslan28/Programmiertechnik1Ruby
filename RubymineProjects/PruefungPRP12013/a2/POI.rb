class POI

  attr_reader :geo_coord, :attachments, :name
  protected :attachments
  def initialize(name, geo_coord)
    @name = name
    @geo_coord = geo_coord
    @attachments = []
  end

  def <<(attachment)
    if !attachment.is_a?(Attachment)
      return self
    end
    if !(@attachments.include?(attachment))
      @attachments << attachment
    end
    return self
  end

  def to_s()
    return "POI(#@name,#@geo_coord,\{#{@attachments.sort().join(",")}\}"
  end

  def == (other)
    [@name,@geo_coord,@attachments] == [other.name, other.geo_coord, other.attachments]
  end

  def <=> (other)
    [@name,@geo_coord,@attachments] <=> [other.name, other.geo_coord, other.attachments]
  end

  def eql? (other)
    [@name,@geo_coord,@attachments].eql? [other.name, other.geo_coord, other.attachments]
  end

  def hash
    @name.hash
  end
 
end

class Geokoordinate
  attr_reader :bg, :lg
  def initialize(breitengrad,laengengrad)
    @bg = breitengrad
    @lg = laengengrad
  end

  def to_s()
    return "(#@bg,#@lg)"
  end

  def == (other)
    [@bg,@lg] == [other.bg, other.lg]
  end

  def <=> (other)
    [@bg,@lg] <=> [other.bg, other.lg]
  end

  def eql? (other)
    [@bg,@lg].eql? [other.bg, other.lg]
  end

  def hash
    @bg.hash
  end
end

class Attachment
  attr_reader :name,:inhalt
  def initialize(name,inhalt)
    @name = name
    @inhalt = inhalt
  end

  def to_s()
    "At[#@name,#@inhalt]"
  end

  def == (other)
    [@name,@inhalt] == [other.name, other.inhalt]
  end

  def <=> (other)
    [@name,@inhalt] <=> [other.name, other.inhalt]
  end

  def eql? (other)
    [@name,@inhalt].eql? [other.name, other.inhalt]
  end

  def hash
    @name.hash
  end
end

