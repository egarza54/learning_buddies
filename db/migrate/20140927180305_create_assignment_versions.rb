class CreateAssignmentVersions < ActiveRecord::Migration
  def change
    create_table :assignment_versions do |t|
    	t.integer :assignment_id
    	t.integer :student_id
    	t.text :submission


      t.timestamps
    end
  end
end
