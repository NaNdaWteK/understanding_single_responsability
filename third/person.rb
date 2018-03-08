require_relative 'met'
require_relative 'sport'

module Third
  class Person
    def initialize(weight)
      @weight = weight
    end
    def kcal_burns(sport, minutes)
      sport_kcal = Third::SportCalculator.new(sport,minutes).kcal
      sport_kcal * @weight
    end
  end
end
