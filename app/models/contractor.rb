class Contractor < ActiveRecord::Base
  has_many :projects, through: :contractor_projects

end