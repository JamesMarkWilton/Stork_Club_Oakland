class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :members
      t.boolean :under21
      t.integer :slot
      t.belongs_to :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
