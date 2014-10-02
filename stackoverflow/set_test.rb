require 'set'
require 'pry'
class Family
  attr_reader :people

  def initialize(people)
    binding.pry
    @people = people
  end
end

class GrandParent
  attr_reader :grandparents
  def initialize(grandparents)
    @grandparents = grandparents
  end

  def << (name)
    @grandparents << name
  end
end
