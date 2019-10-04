class CreateContactInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_infos do |t|
      t.string :name
      t.integer :number
      t.text :address
      t.text :content

      t.timestamps
    end
  end
end
