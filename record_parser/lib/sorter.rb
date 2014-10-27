class Sorter
  def sort_by_gender(records)
    records.sort {|a, b| a[2] <=> b[2]}
  end
end