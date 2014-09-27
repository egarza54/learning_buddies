class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
    	t.integer :assignment_type
      t.text :submission
      t.integer :teacher

      t.timestamps
    end
  end
end
