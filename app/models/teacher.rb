class Teacher < ActiveRecord::Base

  has_many :employees

  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: {strict: true}
end