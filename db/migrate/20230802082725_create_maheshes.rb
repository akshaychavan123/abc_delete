class CreateMaheshes < ActiveRecord::Migration[6.1]
  def change
    create_table :maheshes do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
