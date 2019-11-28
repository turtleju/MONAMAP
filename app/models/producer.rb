class Producer < ApplicationRecord
  has_many :categories
  geocoded_by :address
  after_validation :geocode, if: :coordinates_empty?
  # , if: :will_save_change_to_address?

  def coordinates_empty?
    latitude.nil? && longitude.nil?
  end
end
