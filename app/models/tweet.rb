# app/models/tweet.rb
class Tweet < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: {maximum:140}
  validates :user, presence: true

  acts_as_votable

  has_attached_file :image  #vid 69
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end


