require 'pry'

class CommandLineInterface
  def hey
    puts "Howdy, what's your name?"
  end

  def app_user
   user = gets.chomp
  end

  def greet
   puts "#{app_user}, what a beautiful name! Welcome to TacoFinder."
  end

  def gets_user_input
   puts "We can help you find which tacos are favorites of your students."
   puts "Enter a student name to get started:"
      user_input = gets.chomp
  end

  def find_student(gets_user_input)
    stud = Student.find_by(name: gets_user_input)
  end


  def find_student(gets_user_input)
    scholar = gets_user_input.capitalize
    stud = Student.find_by(name: scholar)
  end

  def student
    puts "#{search_by_name}"
  end

  def find_tacos(stud)
    stud.tacos
  end

  def show_tacos(tacos)
    tacos.each do |taco|
      puts taco.kind
    end
  end





  def run

    hey
    greet
    input = gets_user_input
    found_student = find_student(input)
    students_tacos = find_tacos(found_student)
    show_tacos(students_tacos)
  end

end
