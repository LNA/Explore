class UI
  UNSORTED_RECORDS_MESSAGE    = "Here are the unsorted records:"
  GENDER_MESSAGE              = "Here are the records sorted by gender:"
  ASCENDING_BIRTHDAY_MESSAGE  = "Here are the records sorted by birthday, ascending:"
  DESCENDING_BIRTHDAY_MESSAGE = "Here are the records sorted by birthday, descending:"

  def unsorted_records_message
    puts UNSORTED_RECORDS_MESSAGE
  end

  def gender_message
    puts GENDER_MESSAGE
  end

  def ascending_birthday_message
    puts UNSORTED_RECORDS_MESSAGE
  end

  def descending_birthday_message
    puts UNSORTED_RECORDS_MESSAGE
  end

  def display_records(line)
    p "#{line[0]} #{line[1]} #{line[2]} #{line[3]} #{((line[-1]).insert(2, "/")).insert(5, "/")}"
  end
end