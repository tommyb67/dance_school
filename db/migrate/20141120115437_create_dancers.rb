class CreateDancers < ActiveRecord::Migration
  def change
    create_table :dancers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.timestamp :birthdate
      t.string :email

      t.timestamps
    end
  end
end
