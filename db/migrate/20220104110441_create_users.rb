class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :usertype
      rename_column :users, :password, :password_digest

      # rename_column :table_name, :old_column, :new_column
      # rename_column :students, :name, :full_name
      t.timestamps
    end

    def down
    rename_column :users, :password, :password_digest
    end

  end
end
