class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :sub_header, foreign_key: true
      t.belongs_to :type, foreign_key: true
      t.text :content
      t.string :name
      t.integer :subject_id

      t.timestamps
    end
  end
end
