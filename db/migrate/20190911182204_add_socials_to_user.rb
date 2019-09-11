class AddSocialsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :instagram, :string
    add_column :users, :twitter, :string
    add_column :users, :twitch, :string
    add_column :users, :mixer, :string
    add_column :users, :youtube, :string
  end
end
