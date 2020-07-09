class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :instrument_type
      t.integer :rating
      t.boolean :pleasant

      t.timestamps
    end
  end
end
