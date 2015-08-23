class CreateApiTokens < ActiveRecord::Migration
  def change
    create_table :api_tokens do |t|
      t.integer :api_tokenable_id, null: false
      t.string :api_tokenable_type, null: false
      t.string :token, null: false

      t.timestamps null: false
    end
    add_index :api_tokens, :api_tokenable_id
    add_index :api_tokens, [:api_tokenable_id, :api_tokenable_type], unique: true
    add_index :api_tokens, :token, unique: true
  end
end
