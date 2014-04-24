class Posts
  attr_accessor :id, :records

  def initialize
    @records = {}
    @id = 1
  end
  
  def save(post)
    @records[@id] = post 
    post.id = @id
    @id += 1
    post
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