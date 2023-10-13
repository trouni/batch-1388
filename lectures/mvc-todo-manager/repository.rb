class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def add(task)
    @tasks << task # instance of Task
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
