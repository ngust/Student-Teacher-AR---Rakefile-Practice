require 'pry'
class Student < ActiveRecord::Base

  belongs_to :teacher

  validates :email, presence: true, uniqueness: true,  format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}, length: {minimum: 10}
  before_validation :check_age

  after_save :last_student, if: :teacher
  
  def name
    name=(self.first_name+' '+self.last_name)
  end

  def age
    now=Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    
  end

  def check_age
    if age<=3
      return false
    end
  end

  def last_student
    teacher.last_student_added_at = Date.today
    teacher.save
  end

end
