class HomeController < ApplicationController
  def create
    dashboard      = DashboardWrapper.wrap_dashboard
    task_wrapper   = TaskWrapper.new(dashboard.task_builder)
    word_wrapper   = WordWrapper.new(dashboard.word_generator)
    day_wrapper    = DayWrapper.new(dashboard.day_finder)

    @today         = day_wrapper.today #move to presenter so that I have one instance variable instead of 5
    # @today       = @dashboard_presenter.today
    @am_task       = task_wrapper.build_am_tasks(@today)
    @pm_task       = task_wrapper.build_pm_tasks(@today)
    @word          = word_wrapper.word
    @meaning       = word_wrapper.meaning

    render "dashboard"
  end
end