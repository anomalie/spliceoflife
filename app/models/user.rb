class User < ActiveRecord::Base
  has_secure_password
  has_many :articles
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates_presence_of :password, presence: true, confirmation: true, :on => :create
end
