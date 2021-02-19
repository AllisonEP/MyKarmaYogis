class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :content
      t.resources :volunteer
      t.resources :project

      t.timestamps
    end
  end
end
