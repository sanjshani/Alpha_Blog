class Article < ApplicationRecord
  # many-to-one table association
  belongs_to :user
  #many-to-many table association
  has_many :article_categories
  has_many :categories, through: :article_categories

  # validation (article attributes)
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 500}
  validates :user_id, presence: true


end
