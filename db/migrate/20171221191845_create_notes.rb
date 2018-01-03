class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :sub_header, foreign_key: true
      t.string :name
      t.integer :subject_id
      t.text :bullet
      t.text :definition
      t.text :img
      t.text :code
      t.text :equation
      t.text :figure

      t.timestamps
    end
  end
end
