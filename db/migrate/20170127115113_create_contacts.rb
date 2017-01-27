class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :header
      t.string :body
      t.string :email
      t.boolean :inform

      t.timestamps
    end
  end
end
