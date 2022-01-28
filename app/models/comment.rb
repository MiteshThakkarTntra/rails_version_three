class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :students
  belongs_to :teachers
end
