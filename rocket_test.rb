require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def test_initialize_rocket_with_name
    @rocket = Rocket.new( {:name => "Bob"} )
    assert_equal(@rocket.name, "Bob")
  end

  def test_initialize_rocket_without_name
    @rocket = Rocket.new
    assert_equal(@rocket.name.class, String)
  end

  def test_name_returns_random_name
    rocket = Rocket.new
    name = rocket.name
    assert name != nil
  end

  def test_specific_name
    rocket = Rocket.new
    name = rocket.name=('Rob')
    assert_equal('Rob', name)
  end

  def test_name_is_non_string_values
    @rocket = Rocket.new( {:name => 123} )
    assert @rocket.name.class != String
  end

  def test_name_updated
    @rocket = Rocket.new( {:name => "Bob"} )
    @rocket.name = "Cat"
    assert_equal(@rocket.name, "Cat")
  end

  def test_name_updated_with_invalid_value
    @rocket = Rocket.new( {:name => "Bob"} )
    @rocket.name = "Cat"
    refute_equal(@rocket.name, "Bob")
  end

  def test_initialize_rocket_with_colour
    @rocket = Rocket.new( {:colour => "Red"} )
    assert_equal(@rocket.colour, "Red")
  end

  def test_initialize_rocket_without_colour
    @rocket = Rocket.new
    assert_equal(@rocket.colour.class, String)
  end

  def test_colour_returns_not_nil
    @rocket = Rocket.new( {:colour => nil} )
    assert @rocket.colour != nil
  end

  def test_specific_colour
    rocket = Rocket.new
    colour = rocket.colour=('Red')
    assert_equal('Red', colour)
  end

  def test_colour_is_non_string_values
    @rocket = Rocket.new( {:colour => 123} )
    assert @rocket.colour.class != String
  end

  def test_colour_updated
    @rocket = Rocket.new( {:colour => "Red"} )
    @rocket.colour = "Blue"
    assert_equal(@rocket.colour, "Blue")
  end

  def test_colour_updated_with_invalid_value
    @rocket = Rocket.new( {:colour => "Red"} )
    @rocket.colour = "Blue"
    refute_equal(@rocket.colour, "Red")
  end

  def test_flying_with_boulean_true
    @rocket = Rocket.new( {:flying => true} )
    assert @rocket.flying?
  end

  def test_flying_with_truthy_value
    @rocket = Rocket.new( {:flying => "Bob"} )
    assert @rocket.flying?
  end

  def test_rocket_not_flying
    @rocket = Rocket.new
    refute @rocket.flying?
  end

end
