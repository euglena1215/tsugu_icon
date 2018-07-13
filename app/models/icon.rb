class Icon < ApplicationRecord
  mount_uploader :image, IconImageUploader

  validates :image, presence: true
end
