#app/models/pin.rb
class Pin < ApplicationRecord
  belongs_to :user
 acts_as_votable
end
