class List < ApplicationRecord
  belongs_to :store
  has_many :items, dependent: :destroy
  validates :name, presence: true;

  def item_count
    "This list has #{self.items.count} item(s)"
  end

end
