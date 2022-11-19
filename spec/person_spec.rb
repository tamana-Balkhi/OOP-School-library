require_relative '../person'

describe 'Person' do
  context 'should create an instance of Person class' do
    person = Person.new(20, 'Jhon', true)

    it 'takes three parameters and returns a Person object' do
      expect(person.class) == Person
    end
    it 'returns correct names of person object instance variables' do
      expect(person.age).to eq 20
      expect(person.name).to eq 'Jhon'
      expect(person.parent_permission).to eq true
    end
  end

  context 'should create an instance of Person class' do
    peter = Person.new(13, 'Peter', false)
    it 'Correct name' do
      expect(peter.correct_name).to eq 'Peter'
    end

    it 'Use Service' do
      expect(peter.can_use_services?).to eq false
    end

    it 'Use Service' do
      peter.age = 20
      expect(peter.can_use_services?).to eq true
    end
  end
end
