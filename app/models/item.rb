class Item < ApplicationRecord
  belongs_to :list
  validates_uniqueness_of :name
  validates_presence_of :name, :qty
  validates :qty, numericality: { only_integer: true }
end
