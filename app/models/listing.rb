class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :picture

  enum condition: {
    needs_rebuilding: 1,
    a_bit_hows_it_going: 2,
    used_once: 3,
    brand_new: 4
  }
end
