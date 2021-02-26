class Team < ApplicationRecord
    belongs_to :volunteer
    belongs_to :project

    validates :content, presence: true 
end
