class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :username, :string
    add_column :users, :birthdate, :date
    add_column :users, :twitch_username, :string
    add_column :users, :mixer_username, :string
    add_column :users, :instagram_username, :string
    add_column :users, :youtube_username, :string
  end
end
