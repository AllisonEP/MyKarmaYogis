class Project < ApplicationRecord
  belongs_to :volunteer
  has_many :teams
  has_many :volunteers, through: :teams

  def self.find_latest_five
    order(id: :desc).limit(5)
  end
end
