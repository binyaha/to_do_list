class CreateJacks < ActiveRecord::Migration[5.1]
  def change
    create_table :jacks do |t|
        t.string :name
      t.date :date
      t.text :note
      t.string :file_location
      t.timestamps
    end
  end
end
