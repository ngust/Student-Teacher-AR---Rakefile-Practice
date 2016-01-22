class Teacher < ActiveRecord::Base

  has_many :students

  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true#, uniqueness: {strict: true}
end