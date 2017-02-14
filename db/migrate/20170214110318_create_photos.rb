class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :path
      t.text :description
      t.belongs_to :event

      t.timestamps null: false
    end
  end
end
