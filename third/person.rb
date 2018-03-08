require_relative 'met'
require_relative 'sport'

module Third
  class Person
    def initialize(weight)
      @weight = weight
    end
    def kcal_burns(sport, minutes)
      sport = Third::SportCalculator.new(sport,minutes)
      sport.kcal(@weight)
    end
  end
end
