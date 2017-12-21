class CreateSubHeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_headers do |t|
      t.string :name
      t.belongs_to :subject, foreign_key: true

      t.timestamps
    end
  end
end
