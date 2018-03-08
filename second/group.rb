module Second
  class Group
    KCAL = 0.0175
    def initialize(data)
      @persons = personify(data)
    end

    def kcal_burns
      kcal = 0
      @persons.each { |person|
        kcal += individual_kcal_burn(person)
      }
      kcal
    end

    private

    def individual_kcal_burn(person)
      (person.met * KCAL * person.weight) * person.minutes
    end

    def personify(data)
      data.collect { |cell|
        create_person(cell[0], cell[1], cell[2])
      }
    end

    def create_person(weight, sport, minutes)
      Second::Person.new(weight, sport, minutes)
    end
  end
end
