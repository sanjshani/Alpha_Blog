class Article < ApplicationRecord
  # many-to-one table association
  belongs_to :user

  # validation (article attributes)
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 350}
  validates :user_id, presence: true


end
