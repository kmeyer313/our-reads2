class Student < ActiveRecord::Base
  has_many :recommendations, foreign_key: "recommendor_id"
  has_many :comments, foreign_key: "commentor_id"
  has_many :recommended_books, through: :recommendations, source: :book

  has_secure_password

  validates :username, uniqueness: true, presence: true
  validates :password, length: { minimum: 6 }

end