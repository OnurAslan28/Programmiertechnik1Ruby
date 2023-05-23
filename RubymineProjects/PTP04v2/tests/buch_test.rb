require 'test/unit'
require "./a/Buch"

class BuchTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @buch1 = Buch.new( "Delia Owens","Der Gesang der Flusskrebse")
    @buch2 = Buch.new( "Delia Owens","Der Gesang der Flusskrebse")
    @buch3 = Buch.new( "Martin Walker","Connaisseur")
    @buecher = [@buch1,@buch3]
    @erschienen = {@buch1 => "Juli 2019", @buch3 => "April 2020"}
  end

  def test_include?()
       assert_true(@buecher.include?(@buch2))
  end

  def test_hash_key()
    assert_equal("Juli 2019", @erschienen[@buch2], "Schluessel #{@buch2} nicht enthalten")
  end

  def test_symmtrie()
   assert_nothing_raised(NoMethodError) do @buch1==Object.new()
   end
    assert_false(Object.new()== @buch1)
  end

end