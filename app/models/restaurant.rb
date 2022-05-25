class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :stars, presence: true
  validates :stars, numericality: { only_integer: true, message: 'somente números' }
end
