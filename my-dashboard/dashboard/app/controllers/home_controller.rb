class HomeController < ApplicationController
  def create
    dashboard      = DashboardWrapper.wrap_dashboard
    day_wrapper    = DayWrapper.new(dashboard.day_finder)
    @today         = day_wrapper.today 


    task_wrapper   = TaskWrapper.new(dashboard.task_builder)
    @am_task       = task_wrapper.build_am_tasks(@today)
    @pm_task       = task_wrapper.build_pm_tasks(@today)

    word_wrapper   = WordWrapper.new(dashboard.word_generator)
    @word          = word_wrapper.word
    @meaning       = word_wrapper.meaning

    render "dashboard"
  end
end