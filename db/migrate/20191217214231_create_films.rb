class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :country
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
