class Course < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :enrollments
  has_many :assignments
  has_many :quizzes
  has_many :forum_threads
end
