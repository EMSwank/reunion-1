class Activity
  attr_reader :name,
              :participants

  def initialize(name, participants)
    @name = name
    @participants = {}
  end

  # def participants(name)
  #   @participants
  # end
end
