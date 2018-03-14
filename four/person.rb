module Four
  class Person
    def initialize(weight)
      @weight = weight
    end

    def kcal_burns
      @sport.kcal(@weight)
    end

    def do_sport(sport)
      @sport = sport
    end
  end
end
