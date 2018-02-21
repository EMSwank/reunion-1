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
end
