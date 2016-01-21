class CreateTeachers < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :teachers do |t|
      # column definitions go here
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.timestamps null: false

      # Use the AR migration guide for syntax reference
    end
  end

end
