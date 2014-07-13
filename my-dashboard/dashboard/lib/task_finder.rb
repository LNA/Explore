class TaskFinder
  def find(tasks, today)
    days = {"saturday" => saturday(tasks), "sunday" => sunday(tasks), 
            "monday" => monday(tasks),     "tuesday" => tuesday(tasks)}
    days[today]
    tasks
  end

  def saturday(tasks)
    tasks["Saturday"] = {}
    tasks["Saturday"]["am"] = "OTS"
    tasks["Saturday"]["pm"] = "Relax"
  end

  def sunday(tasks)
    tasks["Sunday"] = {}
    tasks["Sunday"]["am"] = "OTS"
    tasks["Sunday"]["pm"] = "Blog"
  end

  def monday(tasks)
    tasks["Monday"] = {}
    tasks["Monday"]["am"] = "IPM & Footprints"
    tasks["Monday"]["pm"] = "Meditation"
  end

  def tuesday(tasks)
    tasks["Tuesday"] = {}
    tasks["Tuesday"]["am"] = "Footprints"
    tasks["Tuesday"]["pm"] = "HITT"
  end

  def wednesday(tasks)
    tasks["Wednesday"] = {}
    tasks["Wednesday"]["am"] = "Clojure Koans"
    tasks["Wednesday"]["pm"] = "HITT"
  end

  def thursday(tasks)
    tasks["Thursday"] = {}
    tasks["Thursday"]["am"] = "Clojure"
    tasks["Thursday"]["pm"] = "HITT"
  end

  def friday(tasks)
    tasks["Friday"] = {}
    tasks["Friday"]["am"] = "Clojure"
    tasks["Friday"]["pm"] = "HITT"
  end
end