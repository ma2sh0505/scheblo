class Tweet < ApplicationRecord
  
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :start_time
  end
end
