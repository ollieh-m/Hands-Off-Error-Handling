class CreateLetter < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.text :body
      t.string :sender

      t.timestamps
    end
  end
end
