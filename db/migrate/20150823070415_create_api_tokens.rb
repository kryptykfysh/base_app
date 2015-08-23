class CreateApiTokens < ActiveRecord::Migration
  def change
    create_table :api_tokens do |t|
      t.integer :tokenable_id, null: false
      t.string :tokenable_type, null: false
      t.string :value, null: false

      t.timestamps null: false
    end
    add_index :api_tokens, :tokenable_id
    add_index :api_tokens, [:tokenable_id, :tokenable_type], unique: true
    add_index :api_tokens, :value, unique: true
  end
end
