module First
  class Person
    attr_reader :weight, :met, :minutes
    KCAL = 0.0175
    SPORTS = [
      "Walk slowly"   => 3.3,
      "Walk quick"    => 3.8,
      "Walk quickly"  => 5
    ]
    def initialize(weight, sport, minutes)
      @weight = weight
      @met = get_met(sport)
      @minutes = minutes
    end
    def kcal_burns
      (met * KCAL * weight) * minutes
    end

    private
    
    def get_met(sport)
      return  SPORTS[0][sport]
    end
  end
end
