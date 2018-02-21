require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("hiking", {"Dave"=> 50})

    assert_instance_of Activity, activity
  end

  def test_it_can_take_a_name
    activity = Activity.new("hiking", {"Dave": 50})

    assert_equal "hiking", activity.name
  end

  def test_it_has_participants
    activity = Activity.new("hiking", {"Dave": 50})
    expected = {"Dave": 50}
    assert_equal expected, activity.participants
  end

  def test_it_can_add_participants
    activity = Activity.new("hiking", {"Dave"=>50})
    activity.add_participants("Jim", 60)
    assert_equal ({"Dave" => 50, "Jim" => 60}), activity.participants
  end

  def test_it_has_total_cost_of_activity
    activity = Activity.new("hiking", {"Dave"=>50, "Jim"=>60})

    assert_equal 110, activity.total_cost
  end

  def test_it_can_split_costs
    activity = Activity.new("hiking", "Dave"=>50, "Jim"=>60)

    assert_equal 55, activity.split_costs
  end

  def test_it_calculates_whats_owed

  end
end
