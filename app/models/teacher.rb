class Teacher < ApplicationRecord
  validates_uniqueness_of :code


  # Association
  has_many :subjects
end
