module Third
  class Group
    def initialize(data)
      @persons = personify(data)
    end

    def kcal_burns(sport, minutes)
      kcal = 0
      @persons.each { |person|
        kcal += person.kcal_burns(sport, minutes)
      }
      kcal
    end

    private

    def personify(data)
      data.collect { |cell|
        create_person(cell[0])
      }
    end

    def create_person(weight)
      Third::Person.new(weight)
    end
  end
end
