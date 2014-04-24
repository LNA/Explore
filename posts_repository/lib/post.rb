class Post
  attr_accessor :id, :text, :title, :user

  def initialize(params = {})
    @title = params[:title]
    @text  = params[:text]
    @user  = params[:user]
  end

  def update(params = {})
    @title = params[:title] unless @title.nil?
    @text  = params[:text]  unless @text.nil?
    @user  = params[:user]  unless @user.nil?
  end
end