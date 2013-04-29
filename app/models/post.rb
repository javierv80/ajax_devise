class Post < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :user

  def self.search(params)
  	where("title LIKE ?", "%#{params[:keyword]}%")
  end

  
end
