class CreateAssignmentTypes < ActiveRecord::Migration
  def change
    create_table :assignment_types do |t|
    	t.text :instructions
    	t.string :assignment_url

      t.timestamps
    end
  end
end
