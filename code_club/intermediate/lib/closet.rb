class Closet
  attr_accessor :id, :records
  def initialize
    @records = {}
    @id = 1
  end

  def save(item)
    @records[@id] = item
    @records
    @id += 1
  end

  def all
    @records.values
  end

  def find_by_id(id)
    @records[id]
  end

  def delete_by_id(id)
    @records.delete(id)
  end
end