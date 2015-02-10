class CreateTables < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.string :cuisine
      t.string :phone_number
      t.string :email
      t.string :website
      t.string :price
      t.float :average_rating
      t.integer :city_id
      t.integer :owner_id
      t.string :photo_url
      t.timestamps
    end

    create_table :cities do |t|
      t.string :name
      t.string :state
      t.integer :zip_code
    end

    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email
      t.string :password_hash
      t.integer :city_id

      t.timestamps
    end

    create_table :reviews do |t|
      t.float :rating
      t.text :content
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
