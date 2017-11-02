class CreateTaskhanks < ActiveRecord::Migration[5.1]
  def change
    create_table :taskhanks do |t|
      t.string :task
      t.date :date
      t.string :note
      t.boolean :status

      t.timestamps
    end
  end
end
