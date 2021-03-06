class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.references :lead, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
