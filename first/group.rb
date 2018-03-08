module First
  class Group
    KCAL = 0.0175
    def initialize(data)
      @persons = personify(data)
    end

    def kcal_burns
      kcal = 0
      @persons.each { |person|
        kcal += (person.met * KCAL * person.weight) * person.minutes
      }
      kcal
    end

    private

    def personify(data)
      data.collect { |cell|
        First::Person.new(cell[0], cell[1], cell[2])
      }
    end
  end
end
