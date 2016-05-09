class Comment < ActiveRecord::Base

  belongs_to :recommendation
  belongs_to :commentor, class_name: "Student"

  validates :content, :commentor, :recommendation, :presence: true

end