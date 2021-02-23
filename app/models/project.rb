class Project < ApplicationRecord
  belongs_to :volunteer
  belongs_to :department
  has_many :teams
  has_many :volunteers, through: :teams
end
