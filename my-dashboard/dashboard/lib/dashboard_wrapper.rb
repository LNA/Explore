class DashboardWrapper

  def self.day_finder
    DayFinder.new
  end

  def self.task_builder
    TaskBuilder.new(task_finder)
  end

  def self.task_finder
    TaskFinder.new
  end

  def self.word_generator
    WordGenerator.new
  end

  def self.wrap_dashboard
    Dashboard.new(DashboardWrapper.day_finder,  DashboardWrapper.task_builder,
                  DashboardWrapper.task_finder, DashboardWrapper.word_generator)
  end
end