class Response < ActiveRecord::Base
    validates :email, presence: true, length: { maximum: 255 } #format: { with: VALID_EMAIL_REGEX }
    validates :content, presence: true, length: { maximum: 512 }
    
    belongs_to :advert
end
