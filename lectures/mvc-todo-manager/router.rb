class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "--------------------------------"
    puts "Welcome to the MVC Todo Manager!"
    puts "--------------------------------"
    puts
    loop do
      puts "----------"
      puts "What would you like to do?"
      puts "1. List your tasks"
      puts "2. Add a task"
      puts "3. Mark a task as done"
      puts "0. Exit"
      puts "----------"
      print "> "
      action = gets.chomp

      case action
      when "1" then @controller.list
      when "2" then @controller.create
      when "3" then @controller.mark_as_done
      when "0" then break # exits the loop
      else puts "Please choose a number between 0 and 3."
      end
    end
    puts
    puts "Thanks for using the MVC Todo Manager! See you again!"
  end
end
