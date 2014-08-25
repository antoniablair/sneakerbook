class CreateSneakers < ActiveRecord::Migration
  def change
    create_table :sneakers do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :designer

      t.timestamps
    end
  end
end
