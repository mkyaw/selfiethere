class CreateSelfies < ActiveRecord::Migration
  def change
    create_table :selfies do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
