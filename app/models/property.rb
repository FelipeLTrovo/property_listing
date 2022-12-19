class Property < ApplicationRecord
  has_many_attached :photos

  validates :name, presence: true

  def cover_photo
    return if photos.nil?

    if photos.size < 3
      return photos.last
    else
      return photos[2]
    end
  end
end
