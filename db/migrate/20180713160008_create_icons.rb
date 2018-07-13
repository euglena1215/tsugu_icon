class CreateIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :icons do |t|
      t.string :name
      t.string :image, null: false

      t.timestamps
    end
  end
end
