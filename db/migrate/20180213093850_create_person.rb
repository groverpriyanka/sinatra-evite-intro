class CreatePerson < ActiveRecord::Migration[5.1]
  def change
      create_table :people do |p|
      p.string :name
      p.date :dob
      p.string :gender
      p.integer :zipcode

      p.timestamps
    end
  end
end
