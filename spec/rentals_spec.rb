require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe 'Rental' do
  context 'create an instance of a rental' do
    it 'should return true for person' do
      person = Person.new(42, 'Nimrod', true)
      book = Book.new('The Two Towers', 'J.R.R. Tolkien')
      rental = Rental.new('05/10/2022', person, book)

      expect(rental.person) == person
    end
  end
end
