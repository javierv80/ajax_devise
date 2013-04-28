class Post < ActiveRecord::Base
  attr_accessible :content, :title

  def self.search(params)
  	where("title LIKE ?", "%#{params[:keyword]}%").paginate(page: params[:page], order: 'created_at DESC', per_page: 1)
  end
end
