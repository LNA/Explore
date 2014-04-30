class Dress 
  attr_accessor :id, :length, :color

  def initialize(params = {})
    @length = params[:length]
    @color = params[:color]
  end  

  def update(params = {})
    @length = params[:length] unless params[:length].nil?
    @color = params[:color] unless params[:color].nil?
  end
end