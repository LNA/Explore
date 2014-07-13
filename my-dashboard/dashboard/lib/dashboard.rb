class Dashboard
  attr_accessor :day_finder,
                :task_builder,
                :task_finder,
                :word_generator

  def initialize(day_finder, task_builder, task_finder, word_generator)
    @day_finder = day_finder
    @task_builder = task_builder
    @task_finder = task_finder
    @word_generator = word_generator
  end
end