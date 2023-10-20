class Repository
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
    # aussi valable : @tasks.push(task)
  end

  def destroy_task(task)
    @tasks.delete(task)
  end
end
