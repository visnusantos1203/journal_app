class Category < ApplicationRecord

  validates :name, presence: true, uniqueness: true, length: { maximum: 20}
  validates :details, presence: true, length: { minimum: 5 }

  has_many :tasks
end
