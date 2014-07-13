class TaskWrapper
  def initialize(task_builder)
    @task_builder = task_builder
  end

  def build_am_tasks(today)
    tasks = get_tasks_for(today)
    get_am(tasks)
  end

  def build_pm_tasks(today)
    tasks = get_tasks_for(today)
    get_pm(tasks)
  end

private 
  def get_tasks_for(today)
    @task_builder.build(today)
  end
  
  def get_am(tasks)
    tasks["am"]
  end

  def get_pm(tasks)
    tasks["pm"]
  end
end