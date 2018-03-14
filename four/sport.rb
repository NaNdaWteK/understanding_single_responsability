module Four
  class SportCalculator
    KCAL_MINUTE = 0.0175
    def initialize(args)
      args = defaults.merge(args)
      @sport = args[:sport]
      @minutes = args[:minutes]
      @met = args[:met]
    end
    def kcal(weight)
      @met * KCAL_MINUTE * @minutes * weight
    end
    private
    def defaults
      {:sport => 'Walk slowly', :minutes => 60, :met => 3.3}
    end
  end
end
