class Comment < ActiveRecord::Base
  belongs_to :sneaker
  attr_accessible :body, :sneaker_id, :user_name
end
