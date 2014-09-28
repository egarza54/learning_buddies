class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
    	t.integer :assignment_type_id
      t.text :submission
      t.boolean :questions, :default => false
      t.integer :teacher_id

      t.timestamps
    end
  end
end
