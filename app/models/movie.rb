class Movie < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :url, presence: true
end
