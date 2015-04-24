class Advert < ActiveRecord::Base
  validates :email, presence: true, length: { maximum: 255 } #format: { with: VALID_EMAIL_REGEX }
  validates :content, presence: true, length: { maximum: 1024 }
  validates :title, presence: true, length: { maximum: 64 }

  has_many :responses
end
