require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("hiking", {name: "Dave", paid: "50"})

    assert_instance_of Activity, activity
  end

  def test_it_can_take_a_name
    activity = Activity.new("hiking", {name: "Dave", paid: "50"})

    assert_equal "hiking", activity.name
  end

  def test_it_has_participants
    activity = Activity.new("hiking", {name: "Dave", paid: "50"})
    expected = {name: "Dave", paid: "50"}
    assert_equal expected, activity.participants({name: "Dave", paid: "50"})

  end
end
