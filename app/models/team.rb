class Team < ApplicationRecord
    belongs_to :volunteer
    belongs_to :project
end
