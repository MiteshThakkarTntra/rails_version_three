class Student < ActiveRecord::Base
  has_one :profile
  has_many :subjects, through: :subjects
  has_and_belongs_to_many :teachers

  has_many :comments, as: :commentable
end
