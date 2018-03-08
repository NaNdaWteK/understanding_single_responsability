module Third
  class SportCalculator
    KCAL_MINUTE = 0.0175
    def initialize(sport, minutes)
      @sport = sport
      @minutes = minutes
    end
    def kcal
      met = Third::Met.new(@sport).number
      met * KCAL_MINUTE * @minutes
    end
  end
end
