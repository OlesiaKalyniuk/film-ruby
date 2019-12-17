class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :time
      t.references :file, null: false, foreign_key: true

      t.timestamps
    end
  end
end
