class Project < ActiveRecord::Base
  has_many :contractors, through: :contractor_project
end