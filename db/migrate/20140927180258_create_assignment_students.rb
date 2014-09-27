class CreateAssignmentStudents < ActiveRecord::Migration
  def change
    create_table :assignment_students do |t|
    	t.integer :assignment_id
    	t.integer :student_id
    	t.string :grade

      t.timestamps
    end
  end
end
