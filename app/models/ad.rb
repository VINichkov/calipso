class Ad < ActiveRecord::Base
  belongs_to :profile
  belongs_to :rubric
end
