module Third
  class SportCalculator
    KCAL_MINUTE = 0.0175
    def initialize(sport, minutes)
      @minutes = minutes
      @met = Third::Met.new(sport).met
    end
    def kcal
      @met * KCAL_MINUTE * @minutes
    end
  end
end
