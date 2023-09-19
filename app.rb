require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  # write code here

  def display_menu
    loop do
      puts "\nPlease choose an option by entering a number:"
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Add a person'
      puts '4 - Add a book'
      puts '5 - Add a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'

      option = gets.chomp.to_i
      if option == 7
        puts 'Thank you for using this app!'
        break
      else
        choose_option(option)
      end
    end
  end

  def choose_option(option)
    case option
    when 1
      list_all_books
    when 2
      list_all_people
    when 3
      create_person
    when 4
      add_book
    when 5
      add_rental
    when 6
      list_all_rentals
    else
      'Wrong number please enter a number between 1 and 7'
    end
  end

  def list_all_books
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_all_people
    @people.each do |person|
      if person.instance_of?(Student)
        puts "[Student], ID: #{person.id}, Name: #{person.name}, age: #{person.age}"
      else
        puts "[Teacher], ID: #{person.id}, Name: #{person.name}, age: #{person.age}"
      end
    end
  end

  def create_person
    print 'Do you want to add a student (1) or a teacher (2)? [Input the number]: '
    student_or_teacher = gets.chomp.to_i
    case student_or_teacher
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Please enter a valid number: 1 or 2'
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    puts 'Has parent permission? [Y/N]'
    permission = gets.chomp.downcase == 'y'
    student = Student.new(age, permission, name)
    @people << student
    puts 'Student created sucessfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    puts 'specialization'
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    @people << teacher
    puts 'Teacher created sucessfully'
  end

  def add_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts 'Book created sucessfully'
  end

  def add_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Auhtor: #{book.author}"
    end
    book_idx = gets.chomp.to_i

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_idx = gets.chomp.to_i

    print 'Date: '
    rental_date = gets.chomp

    rental = Rental.new(rental_date, @books[book_idx], @people[person_idx])
    @rentals << rental
    puts 'Rental created successfully'
  end

  def list_all_rentals
    print 'ID of person: '
    id = gets.chomp
    puts 'Rental: '
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
  end
end
