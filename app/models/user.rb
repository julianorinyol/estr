class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_and_belongs_to_many :appointments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  before_create :generate_api_key

  def generate_api_key
    key = SecureRandom.hex
    while !User.where(api_key: key).empty?
      key = SecureRandom.hex
    end
    self.api_key = key
  end
end
