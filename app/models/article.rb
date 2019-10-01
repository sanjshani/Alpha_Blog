class Article < ApplicationRecord
  # Validation can be of either of the 2 ways described below!!
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates_presence_of :description, length: {minimum: 10, maximum: 150}
end
