class Hat
  attr_accessor :id, :color, :team

  def initialize(params = {})
    @team = params[:team]
    @color = params[:color]
  end  

  def update(params = {})
    @team = params[:team] unless params[:team].nil?
    @color = params[:color] unless params[:color].nil?
  end
end