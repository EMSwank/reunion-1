class Activity
  attr_reader :name,
              :participants

  def initialize(name, participants)
    @name = name
    @participants = participants
  end

  def add_participants(name, cost)
    @name = name
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
  end

  def split_costs
    total_cost / @participants.count
  end

  def whats_owed(name)
    difference = @participants.fetch(name) - split_costs
  end
end
