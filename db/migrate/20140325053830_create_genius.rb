class CreateGenius < ActiveRecord::Migration
  def change
    create_table :genius do |t|
      t.string :first_name
      t.string :last_name
      t.string :string
      t.integer :software_id
      t.string :linkedin_url

      t.timestamps
    end
  end
end
