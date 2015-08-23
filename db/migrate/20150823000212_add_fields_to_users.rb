# coding: utf-8

class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string
    add_column :users, :image_url, :string
    add_column :users, :provider, :string, null: false
    add_column :users, :uid, :string, null: false
    add_index :users, [:provider, :uid], unique: true
  end
end
