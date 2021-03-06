#app/models/user.rb

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets    #added so that you can associate many tweets with one user.
  has_many :pins
  has_many :items

  validates :username, presence: true, uniqueness: true, length: {minimum: 6}  
  validates :name, presence: true #vid 56 11:07

  acts_as_followable  #vid 59  2:27  enables user to use follow methods
  acts_as_follower
  acts_as_voter  #vid 68 9:26
end
