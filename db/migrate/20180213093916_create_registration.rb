class CreateRegistration < ActiveRecord::Migration[5.1]
  def change
      create_table :registrations do |r|
      r.integer :person_id
      r.integer :event_id
      r.text :rsvp_status

      r.timestamps
    end
  end
end
