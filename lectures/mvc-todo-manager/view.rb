class View
  def display(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. [#{task.done? ? "x" : " "}] #{task.title}"
    end
  end

  def ask_for_title
    puts "What is the title of your task?"
    print "> "
    gets.chomp
  end

  def ask_for_index
    puts "Which task number?"
    print "> "
    gets.chomp.to_i - 1
  end
end
