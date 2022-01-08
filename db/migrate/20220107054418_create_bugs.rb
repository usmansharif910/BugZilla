class CreateBugs < ActiveRecord::Migration[7.0]
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :description
      t.string :type
      t.string :status

      t.timestamps
    end
  end
end
