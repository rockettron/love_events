class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :datetime
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
