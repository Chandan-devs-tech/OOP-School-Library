require_relative 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Title', 'Author')
  end

  describe '#new book' do
    it 'return instance of the Book class' do
      expect(@book).to be_an_instance_of(Book)
    end
  end

  describe '#title' do
    it 'return the title of the book' do
      expect(@book.title).to eql('Title')
    end
  end

  describe '#author' do
    it 'return the author of the book' do
      expect(@book.author).to eql('Author')
    end
  end
end
