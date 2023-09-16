require_relative 'app'

def display_menu
  puts "\nPlease choose an option by entering a number:"
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Add a person'
  puts '4 - Add a book'
  puts '5 - Add a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def choose_option(option, app)
  case option
  when 1
    app.list_all_books
  when 2
    app.list_all_people
  when 3
    app.create_person
  when 4
    app.add_book
  when 5
    app.add_rental
  when 6
    app.list_all_rentals
  else
    'Wrong number please enter a number between 1 and 7'
  end
end

def main
  puts '------------------------------'
  puts 'Welcome to School Library App!'
  puts '------------------------------'
  app = App.new
  loop do
    display_menu
    option = gets.chomp.to_i
    if option == 7
      puts 'Thank you for using this app!'
      break
    else
      choose_option(option, app)
    end
  end
end

main
