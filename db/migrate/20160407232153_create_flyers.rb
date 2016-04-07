class CreateFlyers < ActiveRecord::Migration
  def change
    create_table :flyers do |t|
      t.string :file_path
      t.belongs_to :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
