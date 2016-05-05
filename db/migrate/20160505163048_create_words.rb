class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :original
      t.string :translated

      t.timestamps null: false
    end
  end
end
