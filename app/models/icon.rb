class Icon < ApplicationRecord
  mount_uploader :image, IconImageUploader

  acts_as_taggable

  validates :image, presence: true
end
