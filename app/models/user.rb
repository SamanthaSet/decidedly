class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :decisions, :dependent => :destroy
  has_many :choices, :dependent => :destroy

  validates :email, :presence => true, :uniqueness => true

end
