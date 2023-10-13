require_relative "task"
require_relative "view"

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  # user actions
  def list
    display_tasks
  end

  def create
    # 1. Ask the view to get the title from the user
    title = @view.ask_for_title
    # 2. Create a task using the title
    task = Task.new(title)
    # 3. Add a task to the repository
    @repository.add(task)
  end

  def mark_as_done
    # 0. Display the tasks
    display_tasks
    # 1. Ask the user the index of the task they want to mark as done
    index = @view.ask_for_index
    # 2. Retrieve the task from the repository
    task = @repository.find(index)
    # 3. Mark the task as done
    task.mark_as_done!
  end

  private

  def display_tasks
    # 1. Get all the tasks from the repository
    tasks = @repository.all
    # 2. Ask the view to display the tasks
    @view.display(tasks)
  end
end
