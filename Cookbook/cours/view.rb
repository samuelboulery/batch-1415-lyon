class View
  def display_all_possible_actions
    puts "What do you want to do?"
    puts "1 - Add a new task"
    puts "2 - Display all tasks"
    puts "> "
  end

  def ask_for_name
    puts "What is the name of your task?"
    puts "> "
  end

  def ask_for_description
    puts "What is the description of your task?"
    puts "> "
  end

  def display_tasks(tasks)
    puts "Tasks list:"
    tasks.each do |task|
      done = task.done? ? "[x]" : "[ ]"
      puts "#{done} #{task.name}, #{task.description}"
    end
  end
end
