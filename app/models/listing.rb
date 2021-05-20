class Listing < ApplicationRecord
  belongs_to :category
  has_many :listing_tags
  has_many :tags, through: :listing_tags
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
