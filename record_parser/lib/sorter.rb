class Sorter
  def sort_by_gender(records)
    records.sort {|a, b| a[2] <=> b[2]}
  end

  def sort_by_birthday(records)
    records.sort {|a, b| a[4] <=> b[4]}
  end
end