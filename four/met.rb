module Four
  class Met
    SPORTS = [
      "Walk slowly"   => 3.3,
      "Walk quick"    => 3.8,
      "Walk quickly"  => 5
    ]
    def initialize(sport)
      @met = SPORTS[0][sport]
    end
    def number
      @met
    end
  end
end
