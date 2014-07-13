class TaskBuilder
  attr_accessor :tasks

  def initialize(task_finder)
    @task_finder = task_finder 
  end

  def build(today)
    tasks = find_tasks_for(today)
    build_tasks_for(today, tasks)
  end

private

  def find_tasks_for(today)
    tasks = {}
    @task_finder.find(tasks, today)
    tasks
  end

  def build_tasks_for(today, tasks)
    tasks[today]
  end
end