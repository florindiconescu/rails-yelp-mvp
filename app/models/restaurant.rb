class Restaurant < ApplicationRecord
  validates :name, :address, :category, length: { minimum: 1 }, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian]
  }
  has_many :reviews, dependent: :destroy
end
