require_relative '../book'
require_relative '../classroom'
require_relative '../teacher'
require_relative '../student'
require_relative '../rental'

describe Book do
  title = 'Born to shine'
  author = 'Tamana Balkhi'
  context 'Book is created:' do
    it 'Created book be an instance of Book' do
      book = Book.new(title, author)
      expect(book).to be_an_instance_of Book
    end
  end

  context 'When title and author are instances of a book:' do
    book = Book.new(title, author)
    it 'Book title equal to title' do
      expect(book.title).to eq 'Born to shine'
    end

    it 'Book author equal to author' do
      expect(book.author).to eq 'Tamana Balkhi'
    end
  end

  context 'When rentals are made on a book:' do
    book = Book.new(title, author)
    classroom = Classroom.new('Grade 1')
    student = Student.new(classroom, 1, 'Maxim', true)
    it 'Rentals count should be zero(0) on start of project' do
      expect(book.rentals.length).to eq 0
    end

    it 'Add rentals' do
      Rental.new('2022/11/17', book, student)
      expect(book.rentals.length).to eq 1
    end
  end
end
