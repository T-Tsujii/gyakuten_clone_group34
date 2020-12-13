class Movie < ApplicationRecord
  validates :title, presence: true, length: { maximum: 101 }
  validates :url, presence: true
end
