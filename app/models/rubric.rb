class Rubric < ActiveRecord::Base
  belongs_to :rubric
  has_many :ads
end
