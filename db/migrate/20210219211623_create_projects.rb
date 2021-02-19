class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.belongs_to :volunteer, foreign_key: true
      t.belongs_to :departent, foreign_key: true

      t.timestamps
    end
  end
end
