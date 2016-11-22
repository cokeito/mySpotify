class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :playlists, dependent: :destroy
  has_many :songs, through: :playlists

  enum role: [:normal, :admin]

  before_create :set_role

  private
  	def set_role
  		self.role = 'normal' if self.role.nil?
  	end

end
