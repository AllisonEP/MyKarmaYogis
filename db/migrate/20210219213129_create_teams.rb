class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :content
      t.references :volunteer, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
