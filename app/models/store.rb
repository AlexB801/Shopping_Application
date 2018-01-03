class Store < ApplicationRecord
  has_many :lists, dependent: :destroy
  validates :name, presence: true;
  has_one :address, dependent: :destroy

  after_create :set_address

def self.by_name(asc = true)
  direction = asc ? :asc : :desc
  order(name: direction)
end

def zip
  self.address.zip
end

def set_address
  self.create_address(state: '', zip: '', city: '')
end

end
