class Volunteer < ApplicationRecord
has_many :teams
has_many :projects
has_many :projects, through: :teams
has_many :departments
has_secure_password
end
