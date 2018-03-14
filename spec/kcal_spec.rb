require_relative '../first/person'
require_relative '../first/group'
require_relative '../second/person'
require_relative '../second/group'
require_relative '../third/person'
require_relative '../third/group'
require_relative '../four/person'
require_relative '../four/sport'
require_relative '../four/met'

describe 'Person' do
  context 'Burn' do
    it 'Walking' do
      weight = 100
      sport = 'Walk slowly'
      time = 60
      person = First::Person.new(weight, sport, time)

      expect(person.kcal_burns).to eq(346.5)
    end
    it 'Walking with single responsability for classes' do
      weight = 100
      sport = 'Walk slowly'
      time = 60
      person = Third::Person.new(weight)

      expect(person.kcal_burns(sport, time)).to eq(346.50000000000006)
    end
    it 'Walking with dependency injection for classes' do
      weight = 100
      sport = 'Walk slowly'
      time = 60
      met = Four::Met.new(sport).number
      args = {:met => met, :sport => 'Walk slowly'}
      sport = Four::SportCalculator.new(args)
      person = Four::Person.new(weight)

      person.do_sport(sport)

      expect(person.kcal_burns).to eq(346.50000000000006)
    end
  end
end

describe 'Group' do
  context 'Burn' do
    it 'Walking' do
      one_person = [100, "Walk slowly", 60]
      two_person = [50, "Walk slowly", 60]

      data = [one_person, two_person]
      group = First::Group.new(data)

      expect(group.kcal_burns).to eq(519.75)
    end
    it 'Walking with single responsability for methods' do
      one_person = [100, "Walk slowly", 60]
      two_person = [50, "Walk slowly", 60]

      data = [one_person, two_person]
      group = Second::Group.new(data)

      expect(group.kcal_burns).to eq(519.75)
    end
    it 'Walking with single responsability' do
      one_person = [100]
      two_person = [50]
      sport = "Walk slowly"
      minutes = 60

      data = [one_person, two_person]
      group = Third::Group.new(data)

      expect(group.kcal_burns(sport, minutes)).to eq(519.7500000000001)
    end
  end
end
